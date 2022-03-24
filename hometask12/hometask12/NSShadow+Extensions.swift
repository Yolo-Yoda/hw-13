import UIKit

public extension NSShadow {
    func myOwnShadow(blurRadius: CGFloat,
                     shadowOffsetwidth: CGFloat,
                     shadowOffsetheight: CGFloat,
                     shadowColor: UIColor)-> NSShadow {
        self.shadowBlurRadius = blurRadius
        self.shadowOffset = CGSize(width: shadowOffsetwidth, height: shadowOffsetheight)
        self.shadowColor = shadowColor
        return NSShadow()
    }
}
