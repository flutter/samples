package dev.flutter.multipleflutters

import java.lang.ref.WeakReference

/**
 * Interface for getting notifications when the DataModel is updated.
 */
interface DataModelObserver {
    fun onCountUpdate(newCount: Int)
}

/**
 * A singleton/observable data model for the data shared between Flutter and the host platform.
 *
 * This is the definitive source of truth for all data.
 */
class DataModel {
    companion object {
        val instance = DataModel()
    }

    private val observers = mutableListOf<WeakReference<DataModelObserver>>()

    public var counter = 0
        set(value) {
            field = value
            for (observer in observers) {
                observer.get()?.onCountUpdate(value)
            }
        }

    fun addObserver(observer: DataModelObserver) {
        observers.add(WeakReference(observer))
    }

    fun removeObserver(observer: DataModelObserver) {
        observers.removeIf {
            if (it.get() != null) it.get() == observer else true
        }
    }
}
