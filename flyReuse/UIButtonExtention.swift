//
//  UIButtonExtention.swift
//  flyReuse
//
//  Created by VOLUMETREE on 13/09/23.
//

import UIKit

extension UIButton {

public func createRectangleButton(buttonPositionX: Double, buttonPositionY: Double ,buttonWidth: Double, buttonHeight: Double, buttonTilte: String) {
    let button = UIButton(type: .system) as UIButton
    button.frame = CGRect(x: buttonPositionX, y: buttonPositionY, width: buttonWidth, height: buttonHeight)
    button.setTitle(buttonTilte, for: .normal)
    button.backgroundColor = .white
    button.tintColor = .black
    
    }
}
 
