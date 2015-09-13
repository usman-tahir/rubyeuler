import UIKit

class DurationButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let oneSecondPress = UILongPressGestureRecognizer(target: self, action: "oneSecondPress:")
        oneSecondPress.minimumPressDuration = 1.0
        let twoSecondPress = UILongPressGestureRecognizer(target: self, action: "twoSecondPress:")
        twoSecondPress.minimumPressDuration = 2.0
        let threeSecondPress = UILongPressGestureRecognizer(target: self, action: "threeSecondPress:")
        threeSecondPress.minimumPressDuration = 3.0
        let fourSecondPress = UILongPressGestureRecognizer(target: self, action: "fourSecondPress:")
        fourSecondPress.minimumPressDuration = 4.0
        let fiveSecondPress = UILongPressGestureRecognizer(target: self, action: "fiveSecondPress:")
        fiveSecondPress.minimumPressDuration = 5.0
        
        self.addGestureRecognizer(oneSecondPress)
        self.addGestureRecognizer(twoSecondPress)
        self.addGestureRecognizer(threeSecondPress)
        self.addGestureRecognizer(fourSecondPress)
        self.addGestureRecognizer(fiveSecondPress)
        
        oneSecondPress.requireGestureRecognizerToFail(twoSecondPress)
        twoSecondPress.requireGestureRecognizerToFail(threeSecondPress)
        threeSecondPress.requireGestureRecognizerToFail(fourSecondPress)
        fourSecondPress.requireGestureRecognizerToFail(fiveSecondPress)

    }
    
    func oneSecondPress(press: UIGestureRecognizer) {
        if press.state == .Ended { pressWithDuration(1) }
    }
    
    func twoSecondPress(press: UIGestureRecognizer) {
        if press.state == .Ended { pressWithDuration(2) }
    }
    
    func threeSecondPress(press: UIGestureRecognizer) {
        if press.state == .Ended { pressWithDuration(3) }
    }
    
    func fourSecondPress(press: UIGestureRecognizer) {
        if press.state == .Ended { pressWithDuration(4) }
    }
    
    func fiveSecondPress(press: UIGestureRecognizer) {
        if press.state == .Ended { pressWithDuration(5) }
    }
    
    func pressWithDuration(duration: Int) {
        print("\(duration) second press")
    }

}