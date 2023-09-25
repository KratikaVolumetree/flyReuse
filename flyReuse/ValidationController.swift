//
//  ValidationController.swift
//  flyReuse
//
//  Created by VOLUMETREE on 05/09/23.
//

import Foundation

public class ValidationController {
    private init() {}
    
    public static func validateName(fullname : String) -> (status: Bool, message: String) {
        var validationStatus = true
        var errorMessage = ""
        
        if fullname.isEmpty {
            validationStatus = false
            errorMessage = "Please enter full name"
            return (status: validationStatus, message: errorMessage)
        }
        
        if fullname.count < 3 {
            validationStatus = false
            errorMessage = "Please enter at least three letter full name"
            return (status: validationStatus, message: errorMessage)
        }
        
        if !fullname.checkIfValid(.name) {
            validationStatus = false
            errorMessage = "Incorrect full name"
            return (status: validationStatus, message: errorMessage)
        }
        
        return (status: validationStatus, message: errorMessage)
        
    }
    
    public static func validateEmail(email : String) -> (status: Bool, message: String) {
        
        var validationStatus = true
        var errorMessage = ""
        
        if email.isEmpty {
            validationStatus = false
            errorMessage = "Please enter email"
            return (status: validationStatus, message: errorMessage)
        }
        
        if !email.checkIfValid(.email) {
            validationStatus = false
            errorMessage = "Incorrect Email address"
            return (status: validationStatus, message: errorMessage)
        }
        return (status: validationStatus, message: errorMessage)
        
    }
    
    

    public static func validatePassword(password : String) -> (status: Bool, message: String) {
        
        var validationStatus = true
        var errorMessage = ""
        if password.isEmpty {
            validationStatus = false
            errorMessage = "Please enter password"
            return (status: validationStatus, message: errorMessage)
        }
        
        
        if !password.checkIfValid(.password) {
            validationStatus = false
            
            errorMessage = "Password must be 6-20 characters and contain 1 upper letter, 1 lower letter & 1 number"
            
            return (status: validationStatus, message: errorMessage)
        }
        return (status: validationStatus, message: errorMessage)
        
    }
    
}
