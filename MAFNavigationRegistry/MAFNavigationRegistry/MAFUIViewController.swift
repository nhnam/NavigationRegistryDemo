//
//  MAFUIViewController.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 11/9/21.
//  Email: nhnam.develop@gmail.com

import UIKit

public extension UIViewController {
  func navigate(screen: String) throws {
    try navigate(screen: screen, options: [:])
  }
  
  func navigate(screen: String, options: MAFNavigationOption) throws {
    guard let mafRegistry = self.navigationController as? MAFNavigationRegistry else {
      return
    }
    try mafRegistry.navigate(screen: screen, options: options, sender: nil)
  }
}

public extension UIViewController {
  class func instance() -> Self {
    return Self.init(nibName: nil, bundle: Bundle(for: Self.self))
  }
}

public extension UIViewController{
  private struct Props {
    static var _props: Any?
  }
  
  var props: Any? {
    get {
      return Props._props
    }
    set (newValue) {
      Props._props = newValue
    }
  }
}
