//
//  TextValidator.swift
//  HomeWork9
//

//

import Foundation

class TextValidator {
    func validate(text: String) -> String? {
        if text.isEmpty {
            return "Поле не повинно бути пустим"
        }
        if text.count < 3 {
            return "Кількість символів повинна бути не менше 3"
        }
        return nil
    }
}
        
        
class EmailValidator: TextValidator {
    override func validate(text: String) -> String? {
        super.validate(text: text) ?? (text.contains("@") ? nil : "Email повинен містити символ '@'")
    }
}
                
                
class PasswordValidator: TextValidator {
    override func validate(text: String) -> String? {
        super.validate(text: text) ?? (text.count >= 8 ? nil : "Пароль повинен бути не менше 8 символів")
    }
}
