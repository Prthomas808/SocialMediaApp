//
//  LoginVC.swift
//  SocialMediaApp
//
//  Created by Pedro Thomas on 1/3/24.
//

import UIKit

class LoginVC: UIViewController {
  
  // MARK: Properties
  
  // Header Stack
  private let headerView = HeaderView(instructions: "Log In", height: 200)
  private let emailTextfield = ReusableTextfield(placeholder: "Email Address", keyboardType: .emailAddress, isSecure: false, height: 45, width: UIScreen.main.bounds.width - 50)
  private let passwordTextfield = ReusableTextfield(placeholder: "Password", keyboardType: .asciiCapable, isSecure: true, height: 45, width: UIScreen.main.bounds.width - 50)
  private let signInButton = ReusableButton(buttonTitle: "Sign In", textColor: .systemGray6, buttonColor: .systemPink, height: 45, width: UIScreen.main.bounds.width - 50 )
  private let stackView = ReusableStackview(distrubiton: .fill, axis: .vertical, spacing: 20, alignment: .center)
  
  // Bottom Stack
  private let newUserLabel = ReusableLabel(text: "New User?", fontSize: 15, weight: .light, color: .label, numberOfLines: 0)
  private let createAccountButton = ReusableButton(buttonTitle: "Create Account", textColor: .systemPink, buttonColor: .clear, height: 50, width: 150)
  private let bottomStack = ReusableStackview(distrubiton: .fillEqually, axis: .horizontal, spacing: 0, alignment: .center)
  
  // MARK: Lifecyle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    configureProperties()
    configureConstraints()
  }
  
  // MARK: Objc Functions
  @objc func signInTapped() {
    print("Signed In")
  }
  
  @objc func createAccountTapped() {
    let vc = RegisterVC()
    navigationController?.pushViewController(vc, animated: true)
  }
  
  // MARK: Helping Functions
  private func configureProperties() {
    view.addSubview(stackView)
    stackView.addArrangedSubview(headerView)
    stackView.addArrangedSubview(emailTextfield)
    stackView.addArrangedSubview(passwordTextfield)
    stackView.addArrangedSubview(signInButton)
    
    view.addSubview(bottomStack)
    bottomStack.addArrangedSubview(newUserLabel)
    bottomStack.addArrangedSubview(createAccountButton)
    
    // Button Targets
    signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    createAccountButton.addTarget(self, action: #selector(createAccountTapped), for: .touchUpInside)
  }

  private func configureConstraints() {    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
      stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    
    NSLayoutConstraint.activate([
      bottomStack.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
      bottomStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
    ])
  }
  
}
