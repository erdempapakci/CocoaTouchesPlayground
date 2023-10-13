/*
 Mutual Exclusion: NSLock enforces mutual exclusion, allowing only one thread at a time to access a protected resource. When one thread locks the NSLock, any other threads attempting to lock it will be blocked until the lock is released.
 Resource Protection: It is commonly used to protect shared resources, such as data structures or variables, from concurrent access. This ensures that data integrity is maintained and that concurrent threads do not interfere with each other.
 Locking and Unlocking: Threads use the lock() method to acquire the lock, and they use the unlock() method to release it. It's crucial to release the lock once the critical section of code is executed to allow other threads to access the protected resource.
 */
import UIKit

class Counter {
    private var count = 0
    private var lock = NSLock()

    func increment() {
        lock.lock()
        count += 1
        lock.unlock()
    }

    func decrement() {
        lock.lock()
        count -= 1
        lock.unlock()
    }

    func getCount() -> Int {
        lock.lock()
        let count = self.count
        lock.unlock()
        return count
    }
}
