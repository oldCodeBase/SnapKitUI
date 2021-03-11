//
//  ViewController.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 11/03/2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let silentLabel         = CustomLabel(colour: #colorLiteral(red: 0.2470588235, green: 0.2549019608, blue: 0.3058823529, alpha: 1), font: "HelveticaNeue-Bold", fontSize: 16)
    private let moonLabel           = CustomLabel(colour: #colorLiteral(red: 0.2452261746, green: 0.2552474439, blue: 0.3062137067, alpha: 1), font: "HelveticaNeue-Bold", fontSize: 16)
    private let quizLabel           = CustomLabel(colour: #colorLiteral(red: 0.2452261746, green: 0.2552474439, blue: 0.3062137067, alpha: 1), font: "HelveticaNeue-Bold", fontSize: 30)
    private let descriptionLabel    = CustomLabel(colour: #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), font: "HelveticaNeue-Regular", fontSize: 16)
    private let isRegisteredLabel   = CustomLabel(colour: #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), font: "HelveticaNeue-Medium", fontSize: 14)
    
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("SIGN UP", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9647058824, green: 0.9450980392, blue: 0.9843137255, alpha: 1), for: .normal)
        button.backgroundColor    = #colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1)
        button.layer.cornerRadius = 31
        button.titleLabel?.font   = UIFont(name: "HelveticaNeue-Medium", size: 14)
        return button
    }()
    
    private let logInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOG IN", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.5568627451, green: 0.5921568627, blue: 0.9921568627, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 14)
        return button
    }()
    
    private let logoImageView: UIImageView = {
        let imageView           = UIImageView()
        imageView.image         = UIImage(named: "logo")
        imageView.contentMode   = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let pictureImageView: UIImageView = {
        let imageView           = UIImageView()
        imageView.image         = UIImage(named: "image")
        imageView.contentMode   = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        updateUI()
    }
    
    func updateUI() {
        view.addSubviews(silentLabel, moonLabel, quizLabel, descriptionLabel, isRegisteredLabel,
                         signUpButton, logInButton, logoImageView, pictureImageView)
        
        silentLabel.text        = "Silent"
        moonLabel.text          = "Moon"
        quizLabel.text          = "We are what we do"
        isRegisteredLabel.text  = "ALREADY HAVE AN ACCOUNT?"
        descriptionLabel.text   = "Thousand of people are using silent moon for smalls meditation"
        
        descriptionLabel.numberOfLines = 2
        descriptionLabel.textAlignment = .center
        
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(80)
        }
        
        silentLabel.snp.makeConstraints { make in
            make.centerY.equalTo(logoImageView)
            make.trailing.equalTo(logoImageView.snp.leading).inset(-5)
        }
        
        moonLabel.snp.makeConstraints { make in
            make.centerY.equalTo(logoImageView)
            make.leading.equalTo(logoImageView.snp.trailing).inset(-5)
        }
        
        pictureImageView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(60)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
        }
        
        quizLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pictureImageView.snp.bottom).offset(80)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.top.equalTo(quizLabel.snp.bottom).offset(15)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.bottom.equalTo(logInButton.snp.top).inset(-20)
            make.height.equalTo(63)
        }
        
        isRegisteredLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(76)
            make.bottom.equalToSuperview().inset(44)
        }
        
        logInButton.snp.makeConstraints { make in
            make.leading.equalTo(isRegisteredLabel.snp.trailing).offset(8)
            make.bottom.equalToSuperview().inset(40)
        }
    }
}

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = ViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}
