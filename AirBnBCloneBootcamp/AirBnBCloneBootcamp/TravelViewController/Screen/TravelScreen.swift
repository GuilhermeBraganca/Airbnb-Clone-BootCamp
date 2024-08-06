//
//  Tela01Screen.swift
//  TabBarENotificationCenterViewCodeBootcamp
//
//  Created by Caio Fabrini on 05/08/24.
//

import Foundation
import UIKit

class TravelScreen: UIView {

  lazy var nameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    label.font = UIFont.boldSystemFont(ofSize: 40)
    label.text = "Nome"
    return label
  }()

  init() {
    super.init(frame: .zero)
    backgroundColor = .orange
    addElements()
    configConstraints()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func addElements() {
    addSubview(nameLabel)
  }

  func configConstraints() {
    NSLayoutConstraint.activate([
      nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
    ])
  }

}
