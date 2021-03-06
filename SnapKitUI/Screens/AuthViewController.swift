//
//  AuthViewController.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 11/03/2021.
//

import UIKit
import SnapKit

class AuthViewController: UIViewController {
    
    private let silentLabel       = CustomLabel(text: "Silent")
    private let moonLabel         = CustomLabel(text: "Moon")
    private let quizLabel         = CustomLabel(text: "We are what we do", fontSize: 30)
    private let descriptionLabel  = CustomLabel(colour: #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), font: Font.regularHelvetica)
    private let isRegisteredLabel = CustomLabel(colour: #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), font: Font.mediumHelvetica, fontSize: 14)
    
    private let logoImageView     = CustomImageView(imageName: "logo")
    private let pictureImageView  = CustomImageView(imageName: "image")
    
    private let signUpButton      = CustomButton(title: "SIGN UP", bgColor: #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1))
    private let logInButton       = CustomButton(title: "LOG IN", titleColour: #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1), cornerRadius: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        configureViewController()
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc private func signUpButtonTapped() {
        let vc = SignInViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func logInButtonTapped() {
        let vc = CreateAccountViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension AuthViewController {
    
    private func updateUI() {
        view.addSubviews(silentLabel, logoImageView, moonLabel, pictureImageView,
                         quizLabel, descriptionLabel, signUpButton, isRegisteredLabel, logInButton)
        
        isRegisteredLabel.text = "ALREADY HAVE AN ACCOUNT?"
        descriptionLabel.text  = "Thousand of people are using silent moon for small meditation"
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        logInButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
        }
        
        silentLabel.snp.makeConstraints { make in
            make.centerY.equalTo(logoImageView)
            make.trailing.equalTo(logoImageView.snp.leading).offset(-5)
        }
        
        moonLabel.snp.makeConstraints { make in
            make.centerY.equalTo(logoImageView)
            make.leading.equalTo(logoImageView.snp.trailing).offset(5)
        }
        
        pictureImageView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(60)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
        }
        
        quizLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pictureImageView.snp.bottom).offset(60)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(quizLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.bottom.equalTo(logInButton.snp.top).inset(-20)
            make.height.equalTo(60)
        }
        
        logInButton.snp.makeConstraints { make in
            make.leading.equalTo(isRegisteredLabel.snp.trailing).offset(4)
            make.centerY.equalTo(isRegisteredLabel.snp.centerY)
        }
        
        isRegisteredLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-24)
            make.bottom.equalToSuperview().inset(50)
        }
    }
}
