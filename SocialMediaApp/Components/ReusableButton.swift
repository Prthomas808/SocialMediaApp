//
//  ReusableButton.swift
//
//  Created by Pedro Thomas on 12/1/23.
//

import UIKit

class ReusableButton: UIButton {

  override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  init(buttonTitle: String, textColor: UIColor, buttonColor: UIColor, height: CGFloat, width: CGFloat) {
    super.init(frame: .zero)
    self.setTitle(buttonTitle, for: .normal)
    self.setTitleColor(textColor, for: .normal)
    self.backgroundColor = buttonColor
    
    NSLayoutConstraint.activate([
      self.heightAnchor.constraint(equalToConstant: height),
      self.widthAnchor.constraint(equalToConstant: width)
    ])
    
    configure()
  }
  
  private func configure() {
    translatesAutoresizingMaskIntoConstraints = false
    layer.cornerRadius = 8
  }

}
