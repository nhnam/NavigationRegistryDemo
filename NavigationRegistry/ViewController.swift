//
//  ViewController.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 10/9/21.
//  Email: nhnam.develop@gmail.com

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func didTouchOpenUserButton(_ sender: Any) {
    try? navigate(screen: "user")
  }
  
}

