//
//  UserRootViewController.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 11/9/21.
//  Email: nhnam.develop@gmail.com

import UIKit

public class UserRootViewController: UIViewController {
  
  public override func viewDidLoad() {
    title = "User Profile"
    view.backgroundColor = .white
    addUserDetailsButton()
    addAnotherUserButton()
  }
  
  func addUserDetailsButton() {
    let button = UIButton()
    button.setTitle("User Details", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.layer.cornerRadius = 4.0
    button.layer.borderWidth = 1.0
    button.layer.borderColor = UIColor.systemBlue.cgColor
    button.addAction(UIAction(handler: { action in
      try? self.navigate(screen: "userDetails", options: ["user_name": "U018238"])
    }), for: .touchUpInside)
    self.view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.centerXAnchor.constraint(equalTo: button.superview!.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: button.superview!.centerYAnchor).isActive = true
    button.heightAnchor.constraint(equalToConstant: 48).isActive = true
    button.widthAnchor.constraint(equalToConstant: 180).isActive = true
  }
  
  func addAnotherUserButton() {
    let button = UIButton()
    button.setTitle("Another User", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.layer.cornerRadius = 2.0
    button.layer.borderWidth = 1.0
    button.layer.borderColor = UIColor.systemBlue.cgColor
    button.addAction(UIAction(handler: { action in
      try? self.navigate(screen: "user")
    }), for: .touchUpInside)
    self.view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.centerXAnchor.constraint(equalTo: button.superview!.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: button.superview!.centerYAnchor, constant: 80).isActive = true
    button.heightAnchor.constraint(equalToConstant: 48).isActive = true
    button.widthAnchor.constraint(equalToConstant: 180).isActive = true
  }
}
