//
//  CommanFunctions.swift
//  flyReuse
//
//  Created by VOLUMETREE on 23/08/23.
//

import Foundation


public enum ValidityExression : String {
    
//    case userName = "^[a-zA-z]{1,}+[a-zA-z0-9!@#$%&*]{2,15}"
    case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9-]+\\.[A-Za-z\\.]{1,}"
    case mobileNumber = "^[0-9]{10,10}$"
    case userName = "^[a-zA-Z0-9]{3,50}$"
    case password = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[0-9])[A-Za-z\\d$@$!%*?&#]{6,20}"
    case name = "^[a-zA-Z\\s]{1,}"
    case webUrl = "((https|http)://)((\\w|-)+)(([.]|[/])((\\w|-)+))+"
}

public enum ValidationType {
    case fullName
    case email
    case password
    case newPassword
    case confirmPasssword
    
    case none
    

}

public class CommonFunctions {
    
    /// Show Toast With Message
    static func showToastWithMessage(_ msg: String) {
//        guard let window = AppDelegate.shared.window,
//              let vc = window.rootViewController else {
//            return
//        }
//        DispatchQueue.main.async {
//            
//            if vc.presentationController == nil {
//                vc.view.makeToast(msg)
//            } else {
//                if vc.presentedViewController == nil {
//                    vc.view.makeToast(msg)
//                } else {
//                    vc.presentedViewController?.view.makeToast(msg)
//                }
//            }
//        }
    }
    
    /// Show Activity Loader
    class func showActivityLoader() {
        DispatchQueue.main.async {
//            if let vc = AppDelegate.shared.window?.rootViewController {
//                vc.startNYLoader()
//            }
        }
    }
    
    /// Hide Activity Loader
    class func hideActivityLoader() {
        DispatchQueue.main.async {
//            if let vc = AppDelegate.shared.window?.rootViewController {
//                vc.stopAnimating()
//            }
        }
    }
}
