//
//  MAFNavigationComponent.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 10/9/21.
//  Email: nhnam.develop@gmail.com

import UIKit

public struct MAFNavigationComponent {
  public var screen: String
  public var component: UIViewController.Type
  public init(screen: String, component: UIViewController.Type) {
    self.screen = screen
    self.component = component
  }
}

public struct MAFModuleRegistry {
  public var module: String
  public var stacks: [MAFNavigationComponent]
  
  public init(module: String, stacks: [MAFNavigationComponent]) {
    self.module = module
    self.stacks = stacks
  }
  
  public func main() throws -> MAFNavigationComponent {
    return try component(for: "")
  }
  
  public func component(for screen: String) throws -> MAFNavigationComponent {
    if let aScreen = stacks.first(where: { component in
      return component.screen.caseInsensitiveCompare(screen) == .orderedSame
    }) {
      return aScreen
    } else if let main = stacks.first(where: { component in
      return component.screen.caseInsensitiveCompare("main") == .orderedSame
    }) {
      return main
    }
    throw MAFNavigationRegistryError.screenNotFound
  }
}
