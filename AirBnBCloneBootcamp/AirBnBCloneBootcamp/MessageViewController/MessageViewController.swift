//
//  Tela03VC.swift
//  TabBarENotificationCenterViewCodeBootcamp
//
//  Created by Caio Fabrini on 05/08/24.
//

import Foundation
import UIKit

class MessageViewController: UIViewController {

  var screen: MessageScreen?

  override func loadView() {
    screen = MessageScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    NotificationCenter.default.addObserver(self, selector: #selector(changeName), name: .changeName, object: nil)
  }

  @objc func changeName(_ notification: NSNotification) {
    print("alterou o nome tela 03")
    let text = notification.object as? String
    screen?.nameLabel.text = text
  }
}