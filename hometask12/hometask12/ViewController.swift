//
//  ViewController.swift
//  hometask12
//
//  Created by Виктор Васильков on 24.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.alignTextVerticallyInContainer()
        firstTextField.attributedText = myAttributedString(myString: "Hello world")
        //firstTextField.layer.contentsGravity = .center
        
    }
        
    private func myAttributedString (myString: String)-> NSMutableAttributedString{
        let myAttribute = [ NSAttributedString.Key.font: UIFont(name: "ManusSmooth", size: 45.0)! ]
        let myString = NSMutableAttributedString(string: myString, attributes: myAttribute )
        
        let mySecondAttribute = [
            NSMutableAttributedString.Key.foregroundColor: UIColor.darkGray ,
            NSMutableAttributedString.Key.backgroundColor: UIColor.lightGray ]
        if myString.string.count < 5 {
            return myString
        } else {
            var myRange = NSRange(location: 0, length: 5)
            myString.addAttributes(mySecondAttribute, range: myRange)
            
            if myString.string.count < 5 {
                return myString
            } else {
                myRange = NSRange(location: 0, length: 5)
                let myThirdAttribute = [ NSMutableAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
                myString.addAttributes(myThirdAttribute, range: myRange)
                if myString.string.count < 11 {
                    return myString
                } else {
                    myRange = NSRange(location: 6, length: 5)
                    
                    let myOwnShadow = NSShadow()
                    myOwnShadow.shadowColor = UIColor.gray
                    myOwnShadow.shadowOffset = CGSize(width: 6, height: 6)
                    myOwnShadow.shadowBlurRadius = CGFloat(5)
                    
                    let myFouthAttribute = [ NSMutableAttributedString.Key.shadow: myOwnShadow]
                    myString.addAttributes(myFouthAttribute, range: myRange)
                    return myString
                }
            }
        }
    }
}

public extension UITextView {
    func alignTextVerticallyInContainer() {
        let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let size = sizeThatFits(fittingSize)
        let topOffset = ((bounds.size.height - size.height * zoomScale) / 2)
        let positiveTopOffset = max(1, topOffset)
        contentOffset.y = -positiveTopOffset + 1
    }
}

