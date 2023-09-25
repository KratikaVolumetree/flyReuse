//
//  UIViewExtentions.swift
//  flyReuse
//
//  Created by VOLUMETREE on 13/09/23.
//

import UIKit

extension UIView {
    
    public enum Border {
        case left
        case right
        case top
        case bottom
    }
    
    public enum ShadowPosition {
        case background
        case foreground
    }
    
    public func addBottomBorder(thickness:CGFloat = 1,color:UIColor = .black,offSet:CGFloat = 15)
    {
        let borderLayer = CALayer()
        borderLayer.frame = CGRect(x: offSet, y: self.frame.height - thickness, width: (layer.frame.width - (offSet*4)), height: thickness)
        
        borderLayer.backgroundColor = color.cgColor
        layer.addSublayer(borderLayer)
        
        
    }
    
    public func addFigmaShadow(shadowPosition:ShadowPosition,shouldRasterize:Bool = false)
    {
        switch shadowPosition {
        case .background:
            self.layer.shadowColor = UIColor.gray.cgColor
            self.layer.shadowOffset = CGSize(width: -5, height: -5)
            self.layer.shadowRadius = 7
            self.layer.shadowOpacity = 0.15
            self.layer.masksToBounds = false
        default:
            self.layer.shadowColor = UIColor.lightGray.cgColor//UIColor(red: 174/255.0, green: 174/255.0, blue: 192, alpha: 0.4).cgColor
            self.layer.shadowOffset = CGSize(width: 5, height: 0)
            self.layer.shadowRadius = 5
            self.layer.shadowOpacity = 0.5
            self.layer.masksToBounds = false
        }
    }
    
    ///Sets the circle shadow in the view
    public func setCircleShadow(shadowRadius: CGFloat = 2,
                         shadowOpacity: Float = 0.3,
                         shadowColor: CGColor = UIColor.gray.cgColor,
                         shadowOffset: CGSize = CGSize.zero) {
        layer.cornerRadius = frame.size.height / 2
        layer.masksToBounds = false
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
    }
    
    
    ///Rounds the given corner based on the given radius
    public func roundCorner(_ corner: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corner,
                                    cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        layer.mask = shape
    }
    
    public func setBorder(width: CGFloat, color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
