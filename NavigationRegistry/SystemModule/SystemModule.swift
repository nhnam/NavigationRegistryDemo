//
//  SystemModule.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 11/9/21.
//  Email: nhnam.develop@gmail.com

import Foundation

import MAFNavigationRegistry

public struct SystemModule {
  public static var systemModuleRegistry: MAFModuleRegistry = MAFModuleRegistry(
    module: "system",
    stacks: [
      MAFNavigationComponent(
        screen: "404",
        component: NotFoundViewController.self
      ),
    ])
}
