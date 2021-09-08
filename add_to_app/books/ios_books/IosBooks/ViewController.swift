// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import UIKit

class ViewController: UITableViewController, BKHostBookApi {
  private var books: [BKBook] = []
  private var api: BKFlutterBookApi!
  private var editingIndex: Int = -1

  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = "Books"
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    BKHostBookApiSetup(appDelegate.engine.binaryMessenger, self)
    api = BKFlutterBookApi.init(binaryMessenger: appDelegate.engine.binaryMessenger)
    if let url = URL(
      string: "https://www.googleapis.com/books/v1/volumes?q=greenwood+tulsa&maxResults=15")
    {
      self.loadBooks(url: url) { (newBooks) in
        if let newBooks = newBooks {
          self.books = newBooks
          self.tableView.reloadData()
        }
      }
    }
  }

  /**
   Loads a JSON file from the supplied URL, parses it and calls the callback with the array of
   parsed books on the main thread.
   */
  func loadBooks(url: URL, completion: @escaping ([BKBook]?) -> Void) {
    URLSession.shared.dataTask(with: url) { data, response, error in
      if let data = data {
        do {
          if let json = try JSONSerialization.jsonObject(with: data, options: [])
            as? [String: Any]
          {
            var newBooks: [BKBook] = []
            for item in json["items"] as! [[String: Any]] {
              let volumeInfo = item["volumeInfo"] as! [String: Any]
              let title = volumeInfo["title"] as! String
              let subtitle = volumeInfo["subtitle"] as! String?
              let authors = (volumeInfo["authors"] as! [String]).joined(separator: " & ")
              let pageCount = volumeInfo["pageCount"] as! Int32
              let publishedDate = volumeInfo["publishedDate"] as! String
              let summary = volumeInfo["description"] as! String
              let book: BKBook = BKBook.init()
              book.author = authors
              book.title = title
              book.subtitle = subtitle
              book.title = title
              book.pageCount = NSNumber.init(value: pageCount)
              book.publishDate = publishedDate
              book.summary = summary
              newBooks.append(book)
            }
            DispatchQueue.main.async {
              completion(newBooks)
            }
          }
        } catch let error {
          print("json decode error: \(error)")
          completion(nil)
        }
      }
    }.resume()
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.books.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    -> UITableViewCell
  {
    let cell: BookCell = self.tableView.dequeueReusableCell(withIdentifier: "BookCell") as! BookCell
    let bookInfo = books[indexPath.row]
    cell.title.text = bookInfo.title
    cell.subtitle.text = bookInfo.subtitle
    if let author = bookInfo.author {
      cell.byLine.text = "by: \(author)"
    }
    weak var weakSelf = self
    let editAction = UIAction(title: "Edit") { (action) in
      if let weakSelf = weakSelf {
        weakSelf.editItem(index: indexPath.row)
      }
    }
    cell.editButton.removeTarget(nil, action: nil, for: .allEvents)
    cell.editButton.addAction(editAction, for: UIControl.Event.touchUpInside)
    return cell
  }

  /**
   Presents the FlutterViewController that edits the book at the supplied index.
   */
  func editItem(index: Int) {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let flutterViewController = FlutterViewController.init(
      engine: appDelegate.engine, nibName: nil, bundle: nil)
    self.editingIndex = index
    api.displayBookDetailsBook(self.books[index]) { (error) in
      if let error = error {
        print(error)
      }
    }
    self.present(flutterViewController, animated: true, completion: nil)
  }

  /**
   Called by Pigeon when the FlutterViewController is dismissed without accepting any edits.
   */
  func cancelWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
    self.editingIndex = -1
    self.dismiss(animated: true, completion: nil)
  }

  /**
   Called by Pigeon when edits to the book are accepted in the FlutterViewController.
   */
  func finishEditingBook(_ input: BKBook, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
    self.books[editingIndex] = input
    self.tableView.reloadData()
    self.editingIndex = -1
    self.dismiss(animated: true, completion: nil)
  }
}
