/*
 NSRecursiveLock is a synchronization mechanism in Apple's Foundation framework that allows for recursive locking of a critical section by the same thread. It's similar to NSLock, but with the additional feature that the same thread can lock and unlock it multiple times without causing a deadlock. This is especially useful when a function or method may be called recursively.
 */

import UIKit


class MyObject {
    private let lock = NSRecursiveLock()

    func recursiveFunction(count: Int) {
        lock.lock()
        defer {
            lock.unlock()
        }

        if count > 0 {
            print("Entering recursiveFunction with count: \(count)")
            recursiveFunction(count: count - 1)
        }
    }
}
let myObject = MyObject()

myObject.recursiveFunction(count: 3)
