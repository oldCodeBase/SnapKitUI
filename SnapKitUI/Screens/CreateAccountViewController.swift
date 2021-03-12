//
//  CreateAccountViewController.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 12/03/2021.
//

import UIKit
import SnapKit

class CreateAccountViewController: UIViewController {
    
    private let headerView          = HeaderView(title: "Create your account")
    private let getStartedButton    = CustomButton(title: "GET STARTED", bgColor: #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1))
    private let privacyPolicyButton = CustomButton(title: "I have read the Privacy Policy", titleColour: #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1), cornerRadius: 0)
    private let nameTextField       = CustomTextField(placeholder: "Full name")
    private let emailTextField      = CustomTextField(placeholder: "Email address")
    private let passwordTextField   = CustomTextField(placeholder: "Password")
    
    private let checkboxButton: UIButton = {
        let checkbox = UIButton()
        checkbox.setImage(Images.checked, for: .selected)
        checkbox.setImage(Images.unchecked, for: .normal)
        return checkbox
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        updateUI()
    }
    
    @objc private func checkboxButtonTapped() {
        self.checkboxButton.isSelected.toggle()
    }
}

extension CreateAccountViewController {
    
    private func updateUI() {
        view.addSubviews(headerView, getStartedButton, privacyPolicyButton, nameTextField,
                         emailTextField, passwordTextField, checkboxButton)
        
        passwordTextField.isSecureTextEntry = true
        checkboxButton.addTarget(self, action: #selector(checkboxButtonTapped), for: .touchUpInside)
        
        headerView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(255)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(30)
            make.leading.trailing.equalTo(headerView)
            make.height.equalTo(60)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(20)
            make.height.leading.trailing.equalTo(nameTextField)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.height.leading.trailing.equalTo(nameTextField)
        }
        
        getStartedButton.snp.makeConstraints { make in
            make.top.equalTo(privacyPolicyButton.snp.bottom).offset(20)
            make.height.leading.trailing.equalTo(nameTextField)
        }
        
        privacyPolicyButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.leading.equalTo(headerView)
        }
        
        checkboxButton.snp.makeConstraints { make in
            make.centerY.equalTo(privacyPolicyButton)
            make.trailing.equalTo(headerView)
        }
    }
}

