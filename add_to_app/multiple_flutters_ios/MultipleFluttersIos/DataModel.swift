import Foundation

/// A protocol that recieves updates when the datamodel is changed.
protocol DataModelObserver : AnyObject {
  func onCountUpdate(newCount : Int64)
}

/// A wrapper object around a weak reference to an object that implements DataModelObserver.
///
/// This is required since you can't directly hold weak references to protocols in data structures.
struct AnyDataModelObserver {
  weak var base: DataModelObserver?
  
  init(_ base: DataModelObserver ) {
    self.base = base
  }
}

/// A singleton data model that is observable.
class DataModel {
  private var _count : Int64 = 0
  var count : Int64 {
    get {
      return self._count
    }
    set {
      self._count = newValue
      for observer in observers {
        if let base = observer.base {
          base.onCountUpdate(newCount: self._count)
        }
      }
    }
  }
  private var observers: [AnyDataModelObserver] = []
  static let shared = DataModel()
  
  func addObserver(observer : DataModelObserver) {
    observers.append(AnyDataModelObserver(observer))
  }
  
  func removeObserver(observer : DataModelObserver) {
    observers.removeAll { (element : AnyDataModelObserver) -> Bool in
      if let base = element.base {
        return base === observer
      } else {
        return true
      }
    }
  }
}
