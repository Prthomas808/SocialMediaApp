//
//  RegisterVC.swift
//  SocialMediaApp
//
//  Created by Pedro Thomas on 1/3/24.
//

import UIKit

class RegisterVC: UIViewController {
  
  // MARK: Properties
  
  // Header Stack
  private let headerView = HeaderView(instructions: "Sign Up", height: 200)
  private let firstNameTextfield = ReusableTextfield(placeholder: "First Name", keyboardType: .emailAddress, isSecure: false, height: 45, width: UIScreen.main.bounds.width - 50)
  private let lastNameTextfield = ReusableTextfield(placeholder: "Last Name", keyboardType: .emailAddress, isSecure: false, height: 45, width: UIScreen.main.bounds.width - 50)
  private let emailTextfield = ReusableTextfield(placeholder: "Email Address", keyboardType: .emailAddress, isSecure: false, height: 45, width: UIScreen.main.bounds.width - 50)
  private let passwordTextfield = ReusableTextfield(placeholder: "Password", keyboardType: .asciiCapable, isSecure: true, height: 45, width: UIScreen.main.bounds.width - 50)
  private let signInButton = ReusableButton(buttonTitle: "Sign In", textColor: .systemGray6, buttonColor: .systemPink, height: 45, width: UIScreen.main.bounds.width - 50 )
  private let stackView = ReusableStackview(distrubiton: .fill, axis: .vertical, spacing: 20, alignment: .center)
  
  // Bottom Stack
  private let CurrentUserLabel = ReusableLabel(text: "Have An Account?", fontSize: 15, weight: .light, color: .label, numberOfLines: 0)
  private let logInButton = ReusableButton(buttonTitle: "Log In", textColor: .systemPink, buttonColor: .clear, height: 50, width: 75)
  private let bottomStack = ReusableStackview(distrubiton: .fillEqually, axis: .horizontal, spacing: 0, alignment: .center)
  
  // MARK: Lifecyle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    navigationController?.isNavigationBarHidden = true
    configureProperties()
    configureConstraints()
  }
  
  // MARK: Objc Functions
  @objc func signUpTapped() {
    print("Signed Up")
  }
  
  @objc func loginTapped() {
    navigationController?.popViewController(animated: true)
  }
  
  // MARK: Helping Functions
  private func configureProperties() {
    view.addSubview(stackView)
    stackView.addArrangedSubview(headerView)
    stackView.addArrangedSubview(firstNameTextfield)
    stackView.addArrangedSubview(lastNameTextfield)
    stackView.addArrangedSubview(emailTextfield)
    stackView.addArrangedSubview(passwordTextfield)
    stackView.addArrangedSubview(signInButton)
    signInButton.isUserInteractionEnabled = true
    signInButton.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    
    view.addSubview(bottomStack)
    bottomStack.addArrangedSubview(CurrentUserLabel)
    bottomStack.addArrangedSubview(logInButton)
    logInButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
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
