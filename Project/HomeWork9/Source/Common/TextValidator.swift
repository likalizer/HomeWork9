//
//  TextValidator.swift
//  HomeWork9
//

//

import Foundation

class TextValidator {
    
    func validate(text: String) -> String? {
        
        if text.isEmpty {
            return "Поле вводу не має бути пустими"
        }
        
        if text.count < 3 {
            return "Кількість символів має бути не менше 3"
        }
        
        return nil
        
        
        class EmailValidator: TextValidator {
            
            override func validate(text: String) -> String? {
                if let error = super.validate(text: text) {
                    return error
                }
                
                if text.count > 30 {
                    return "Кількість символів має бути не менше 30"
                }
                
                return nil
            }
        }
    }
}
