//
//  StringExtentions.swift
//  flyReuse
//
//  Created by VOLUMETREE on 05/09/23.
//

import Foundation

extension String {
    
    public func stringToDate(str:String) -> Date {
        let strDate = str
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        guard let localDate = dateFormatter.date(from: strDate) else { return Date() }
        return localDate
    }
    
    
    public func DateToString(str:Data) -> String {
        let date = Date();
        let dateFormatter = DateFormatter()

        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let localDate = dateFormatter.string(from: date)
        return localDate
    }
    
    public func checkIfValid(_ validityExression : ValidityExression) -> Bool {
        
        let regEx = validityExression.rawValue
        
        let test = NSPredicate(format:"SELF MATCHES %@", regEx)
        
        return test.evaluate(with: self)
    }
    
    
    
}
