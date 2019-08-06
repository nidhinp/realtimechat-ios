//
//  SignUpVC.swift
//  realtimechat
//
//  Created by Nidhin P on 8/5/19.
//  Copyright © 2019 nidhin. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    lazy var containerWidth = self.view.frame.width - 24
    let containerHeight: CGFloat = 150.0
    
    let inputContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        return textField
    }()
    
    let nameSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.lineColor
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email address"
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    let emailSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.lineColor
        return view
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var registrationButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Colors.secondary
        button.setTitle("Register", for: .normal)
        button.setTitleColor(Colors.tertiary, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.addTarget(self, action: #selector(handleRegistration), for: .touchUpInside)
        return button
    }()
    
    lazy var closeButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tintColor = .white
        button.setImage(#imageLiteral(resourceName: "close"), for: .normal)
        button.addTarget(self, action: #selector(handleClose), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.primary
        
        setUpInputContainerView()
        setUpRegisterButton()
        setupCloseButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension SignUpVC {
    fileprivate func setUpInputContainerView() {
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(usernameTextField)
        inputContainerView.addSubview(nameSeparatorView)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeparatorView)
        inputContainerView.addSubview(passwordTextField)
        
        let containerHeight: CGFloat = 150.0
        let containerWidth: CGFloat = view.frame.width - 24
        inputContainerView.centerInSuperview(size: .init(width: containerWidth, height: containerHeight))
        
        usernameTextField.anchor(top: inputContainerView.topAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/3))
        
        nameSeparatorView.anchor(top: usernameTextField.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .zero, size: .init(width: containerWidth, height: 1))
        
        emailTextField.anchor(top: nameSeparatorView.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/3))
        
        emailSeparatorView.anchor(top: emailTextField.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .zero, size: .init(width: containerWidth, height: 1))
        
        passwordTextField.anchor(top: emailSeparatorView.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/3))
    }
    
    fileprivate func setUpRegisterButton() {
        view.addSubview(registrationButton)
        
        registrationButton.anchor(top: inputContainerView.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 0, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/3))
    }
    
    fileprivate func setupCloseButton() {
        view.addSubview(closeButton)
        
        closeButton.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 0, bottom: 0, right: 0), size: .init(width: 75, height: 50))
    }
    
    @objc fileprivate func handleRegistration() {
        
    }
    
    @objc fileprivate func handleClose() {
        dismiss(animated: true)
    }
}
