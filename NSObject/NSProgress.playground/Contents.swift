import UIKit

let progress = Progress(totalUnitCount: 100)

// Start a task
for i in 1...100 {
    // Simulate progress
    progress.completedUnitCount = Int64(i)
    
    // Report progress (e.g., update a user interface)
    print("Progress: \(progress.fractionCompleted * 100)%")
    
    // You can also observe changes in the 'fractionCompleted' property
}

// Task completed
print("Task completed!")
