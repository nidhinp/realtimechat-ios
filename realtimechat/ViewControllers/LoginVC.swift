//
//  LoginVC.swift
//  realtimechat
//
//  Created by Nidhin P on 8/4/19.
//  Copyright © 2019 nidhin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    let inputContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let nameSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return button
    }()
    
    let dontHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have an account?"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        setUpInputContainerView()
        setUpLoginRegisterButton()
        setUpSignUpSection()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension LoginVC {
    fileprivate func setUpInputContainerView() {
        view.addSubview(inputContainerView)
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        inputContainerView.addSubview(usernameTextField)
        inputContainerView.addSubview(nameSeparatorView)
        inputContainerView.addSubview(passwordTextField)
        
        usernameTextField.leadingAnchor.constraint(equalTo: inputContainerView.leadingAnchor, constant: 12).isActive = true
        usernameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        usernameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        usernameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/2).isActive = true
        
        nameSeparatorView.leadingAnchor.constraint(equalTo: inputContainerView.leadingAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: inputContainerView.leadingAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: nameSeparatorView.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/2).isActive = true
    }
    
    fileprivate func setUpLoginRegisterButton() {
        view.addSubview(loginRegisterButton)
        
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setUpSignUpSection() {
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(signUpButton)
        
        dontHaveAccountLabel.leadingAnchor.constraint(equalTo: loginRegisterButton.leadingAnchor).isActive = true
        dontHaveAccountLabel.topAnchor.constraint(equalTo: loginRegisterButton.bottomAnchor, constant: 20).isActive = true
        dontHaveAccountLabel.widthAnchor.constraint(equalTo: loginRegisterButton.widthAnchor, multiplier: 1/2).isActive = true
        dontHaveAccountLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        signUpButton.leadingAnchor.constraint(equalTo: dontHaveAccountLabel.trailingAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: loginRegisterButton.bottomAnchor, constant: 20).isActive = true
        signUpButton.widthAnchor.constraint(equalTo: loginRegisterButton.widthAnchor, multiplier: 1/2).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}
