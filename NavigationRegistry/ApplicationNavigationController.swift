//
//  MAFApplicationNavigationController.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 11/9/21.
//  Email: nhnam.develop@gmail.com

import UIKit
import MAFNavigationRegistry
import UserModule

class ApplicationNavigationController: UINavigationController, MAFNavigationRegistry {
  var registry: [String : MAFModuleRegistry] = [
    "user": UserModule.userModuleRegistry,
    "system": SystemModule.systemModuleRegistry
  ]
}

