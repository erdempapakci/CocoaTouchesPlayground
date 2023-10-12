import UIKit

let operation = BlockOperation {
    print("Operation is running in the background")
}

operation.completionBlock = {
    
    print("Operation is completed")

}
let operationQueue = OperationQueue()
operationQueue.addOperation(operation)

operation.waitUntilFinished()
