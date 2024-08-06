//
//  Tela01VC.swift
//  TabBarENotificationCenterViewCodeBootcamp
//
//  Created by Caio Fabrini on 05/08/24.
//

import Foundation
import UIKit

class ExploreViewController: UIViewController {

  var screen: ExploreScreen?

  override func loadView() {
    screen = ExploreScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    screen?.delegate = self
  }

}

extension ExploreViewController: ExploreScreenProtocol {
  func tappedChangeNameButton() {
    let text = screen?.nameTextField.text ?? ""
    screen?.nameLabel.text = text
    NotificationCenter.default.post(name: .changeName, object: text)
  }
}


extension NSNotification.Name {
  static let changeName = Self("changeName")
}
