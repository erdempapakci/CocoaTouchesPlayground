/*
 Condition Variables: NSCondition represents a condition variable. A condition variable is used to block a thread until a particular condition is met. It allows one or more threads to wait for a condition to become true and then be signaled when it does.
 Waiting and Signaling: Threads can wait on a condition using the wait method. When a condition becomes true, another thread can signal this condition using the signal or broadcast method, allowing waiting threads to continue their execution.
 Thread Coordination: NSCondition is often used to coordinate the execution of multiple threads. For example, it can be used to ensure that one thread doesn't proceed until another thread has completed a specific task.
 */

import UIKit
let condition = NSCondition()
var isConditionMet = false
Thread {
    condition.lock()
    while !isConditionMet {
        print("Thread 1 waiting ...")
        condition.wait()
        
    }
}.start()

Thread {
    sleep(2)
    condition.lock()
    isConditionMet = true
    print("Thread 2 signaling the condition.")
    condition.signal()
    condition.unlock()
}.start()
RunLoop.current.run()
