//
//  MAFNavigationRegistry.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 10/9/21.
//  Email: nhnam.develop@gmail.com

import UIKit

public typealias  MAFNavigationOption = [String: Any]

public enum MAFNavigationRegistryError: Error {
  case moduleNotFound
  case screenNotFound
}

public protocol MAFNavigationRegistry {
  var registry: [String: MAFModuleRegistry] { set get }
  func navigate(screen: String, options: MAFNavigationOption, sender: Any?) throws
}

public extension MAFNavigationRegistry where Self: UINavigationController {
  func component(for module: String) throws -> MAFNavigationComponent {
    if let moduleRegistry = registry[module], let main = try? moduleRegistry.main() {
      return main
    }
    
    let allModules = registry.compactMap { name, registry in
      return registry
    }
    for moduleRegistry in allModules {
      if let aScreen = moduleRegistry.stacks.first(where: { component in
        return component.screen.caseInsensitiveCompare(module) == .orderedSame
      }) {
        return aScreen
      }
    }
    if let moduleRegistry = registry["system"],
       let notfound = moduleRegistry.stacks.first(where: { component in
        return component.screen.caseInsensitiveCompare("404") == .orderedSame
       }) {
      return notfound
    }
    
    throw MAFNavigationRegistryError.screenNotFound
  }
  
  func navigate(screen: String, options: MAFNavigationOption, sender: Any? = nil) throws {
    guard let screen = try? component(for: screen) else {
      throw MAFNavigationRegistryError.screenNotFound
    }
    let entry: UIViewController.Type = screen.component
    let instance = entry.instance()
    instance.props = options
    self.show(instance, sender: nil)
  }
}
