import UIKit

class MyLongPressGestureRecognizer: UIGestureRecognizer {
    
    private var timer: Timer?
    
    override init(target: Any?, action: Selector?) {
        super.init(target: target, action: action)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesBegan(touches, with: event)
        
        // Start a timer when touches begin
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { [weak self] _ in
            // If the timer fires, recognize the gesture as a long press
            self?.state = .recognized
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesEnded(touches, with: event)
        
        // Invalidate the timer when touches end
        timer?.invalidate()
        timer = nil
    }
    
    override func reset() {
        super.reset()
        
        // Reset the state and invalidate the timer
        state = .possible
        timer?.invalidate()
        timer = nil
    }
}
