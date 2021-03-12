//
//  SignInViewController.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 12/03/2021.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {
    private let welcomeBackLabel      = CustomLabel(text: "Welcome Back!", fontSize: 28)
    private let facebookButton        = CustomButton(title: "CONTINUE WITH FACEBOOK", bgColor: #colorLiteral(red: 0.4588235294, green: 0.5137254902, blue: 0.7921568627, alpha: 1))
    private let googleButton          = CustomButton(title: "CONTINUE WITH GOOGLE", titleColour: .label)
    private let orLoginWithEmailLabel = CustomLabel(text: "OR LOG IN WITH EMAIL", colour: #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), fontSize: 14)
    private let logInButton           = CustomButton(title: "LOG IN", bgColor: #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1))
    private let forgotPasswordButton  = CustomButton(title: "Forgot Password?", titleColour: .label)
    private let emailTextField        = CustomTextField(placeholder: "Email address")
    private let passwordTextField     = CustomTextField(placeholder: "Password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        updateUI()
    }
}

extension SignInViewController {
    func updateUI() {
        view.addSubviews(welcomeBackLabel, facebookButton, googleButton, orLoginWithEmailLabel,
                         logInButton, forgotPasswordButton, emailTextField, passwordTextField)
        
        facebookButton.setImage(Images.facebook, for: .normal)
        facebookButton.tintColor = .white
        facebookButton.imageEdgeInsets.right = facebookButton.frame.width + 40
        
        googleButton.setImage(Images.google, for: .normal)
        googleButton.tintColor = .label
        googleButton.imageEdgeInsets.right = googleButton.frame.width + 55
        
        googleButton.layer.borderWidth = 2
        googleButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        welcomeBackLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeBackLabel.snp.bottom).offset(30)
            make.height.equalTo(60)
            make.leading.equalToSuperview().offset(30)
        }
        
        googleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(facebookButton.snp.bottom).offset(20)
            make.height.equalTo(60)
            make.leading.equalToSuperview().offset(30)
        }
        
        orLoginWithEmailLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(googleButton.snp.bottom).offset(40)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(orLoginWithEmailLabel.snp.bottom).offset(40)
            make.leading.equalToSuperview().offset(30)
            make.height.equalTo(60)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(30)
            make.height.equalTo(60)
        }
        
        logInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(30)
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.height.equalTo(60)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logInButton.snp.bottom).offset(20)
            make.width.equalTo(140)
        }
    }
}


import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = SignInViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> SignInViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}
