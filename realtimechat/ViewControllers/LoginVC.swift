//
//  LoginVC.swift
//  realtimechat
//
//  Created by Nidhin P on 8/4/19.
//  Copyright © 2019 nidhin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    lazy var containerWidth = self.view.frame.width - 24
    let containerHeight: CGFloat = 100
    
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
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Colors.secondary
        button.setTitle("Login", for: .normal)
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
        return label
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(Colors.tertiary, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.addTarget(self, action: #selector(handleSignUpButtonClick), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.primary
        
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
        inputContainerView.addSubview(usernameTextField)
        inputContainerView.addSubview(nameSeparatorView)
        inputContainerView.addSubview(passwordTextField)
        
        inputContainerView.centerInSuperview(size: .init(width: containerWidth, height: containerHeight))
        
        usernameTextField.anchor(top: inputContainerView.topAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/2))
        
        nameSeparatorView.anchor(top: usernameTextField.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .zero, size: .init(width: containerWidth, height: 1))
        
        passwordTextField.anchor(top: nameSeparatorView.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/2))
    }
    
    fileprivate func setUpLoginRegisterButton() {
        view.addSubview(loginButton)
        
        loginButton.anchor(top: inputContainerView.bottomAnchor, leading: inputContainerView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 0, bottom: 0, right: 0), size: .init(width: containerWidth, height: containerHeight/2))
    }
    
    fileprivate func setUpSignUpSection() {
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(signUpButton)
        
        dontHaveAccountLabel.anchor(top: loginButton.bottomAnchor, leading: loginButton.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: containerWidth/2, height: 20))
        
        signUpButton.anchor(top: loginButton.bottomAnchor, leading: dontHaveAccountLabel.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: containerWidth/2, height: 20))
    }
    
    @objc fileprivate func handleSignUpButtonClick() {
        present(SignUpVC(), animated: true, completion: nil)
    }
}
