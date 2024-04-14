//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    
    protocol SignInModelDelegate: AnyObject {
        func didValidate(errorText: String?, textType: TextType)
    }
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = "" {
        didSet {
            let validator = EmailValidator()
            if let error = validator.validate(text: email) {
                delegate?.didValidate(errorText: error, textType: .error)
                emailValid = false
            } else {
                delegate?.didValidate(errorText: nil, textType: .regular)
                emailValid = true
            }
        }
    }
    
    var password: String = "" {
        didSet {
            let validator = PasswordValidator()
            if let error = validator.validate(text: password) {
                delegate?.didValidate(errorText: error, textType: .error)
                passwordValid = false
            } else {
                delegate?.didValidate(errorText: nil, textType: .regular)
                passwordValid = true
            }
        }
    }
}
