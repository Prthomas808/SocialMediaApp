//
//  HeaderView.swift
//  SocialMediaApp
//
//  Created by Pedro Thomas on 1/3/24.
//

import UIKit

class HeaderView: UIView {

  // MARK: Properties
  private let logoImageView = ReusableSystemImage(systemImage: "camera", preferMultiColor: false, color: .systemPink, height: 125, width: 125)
  private let instructionsLabel = ReusableLabel(text: "Log In", fontSize: 18, weight: .bold, color: .label, numberOfLines: 1)
  private let taskLabel = ReusableLabel(text: "Enter Your Information Below", fontSize: 14, weight: .light, color: .label, numberOfLines: 1)
  
  // MARK: Lifecyle
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureProperties()
    configureConsstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  init(instructions: String, height: CGFloat) {
    super.init(frame: .zero)
    self.instructionsLabel.text = instructions
    
    NSLayoutConstraint.activate([
      self.heightAnchor.constraint(equalToConstant: height)
    ])
    
    configureProperties()
    configureConsstraints()
  }
  
  
  // MARK: Helping Functions
  private func configureProperties() {
    self.translatesAutoresizingMaskIntoConstraints = false
    
    addSubview(logoImageView)
    logoImageView.contentMode = .scaleAspectFit
    addSubview(instructionsLabel)
    addSubview(taskLabel)
  }
  
  private func configureConsstraints() {
    NSLayoutConstraint.activate([
      logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
      logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
    ])
    
    NSLayoutConstraint.activate([
      instructionsLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 5),
      instructionsLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      instructionsLabel.heightAnchor.constraint(equalToConstant: 20)
    ])
    
    NSLayoutConstraint.activate([
      taskLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 10),
      taskLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      taskLabel.heightAnchor.constraint(equalToConstant: 20)
    ])
    
  }

}
