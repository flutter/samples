import Foundation


protocol DataModelObserver : AnyObject {
  func onCountUpdate(newCount : Int64)
}

struct AnyDataModelObserver {
  weak var base: DataModelObserver?
  
  init(_ base: DataModelObserver ) {
    self.base = base
  }
}

class DataModel {
  private var _count : Int64 = 0
  var count : Int64 {
    get {
      return self._count
    }
    set {
      self._count = newValue
      for observer in _observers {
        if let base = observer.base {
          base.onCountUpdate(newCount: self._count)
        }
      }
    }
  }
  var _observers: [AnyDataModelObserver] = []
  static let shared = DataModel()
  
  func addObserver(observer : DataModelObserver) {
    _observers.append(AnyDataModelObserver(observer))
  }
  
  func removeObserver(observer : DataModelObserver) {
    _observers.removeAll { (element : AnyDataModelObserver) -> Bool in
      if let base = element.base {
        return base === observer
      } else {
        return true
      }
    }
  }
}
