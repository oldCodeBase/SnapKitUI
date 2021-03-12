//
//  SignInViewController.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 12/03/2021.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {
    
    private let headerView            = HeaderView(title: "Welcome Back!")
    private let logInButton           = CustomButton(title: "LOG IN", bgColor: #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1))
    private let forgotPasswordButton  = CustomButton(title: "Forgot Password?", titleColour: .label, cornerRadius: 0)
    private let emailTextField        = CustomTextField(placeholder: "Email address")
    private let passwordTextField     = CustomTextField(placeholder: "Password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        updateUI()
    }
}

extension SignInViewController {
    
    private func updateUI() {
        view.addSubviews(headerView, logInButton, forgotPasswordButton, emailTextField, passwordTextField)
        
        passwordTextField.isSecureTextEntry = true
        
        headerView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(255)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(30)
            make.leading.trailing.equalTo(headerView)
            make.height.equalTo(60)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.height.leading.trailing.equalTo(emailTextField)
        }
        
        logInButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.height.leading.trailing.equalTo(emailTextField)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logInButton.snp.bottom).offset(20)
        }
    }
}
