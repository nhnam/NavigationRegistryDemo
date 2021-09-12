//
//  MAFNavigationRegistryDataSource.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 11/9/21.
//  Email: nhnam.develop@gmail.com

public protocol MAFNavigationRegistryDataSource {
  func supportedRoutes() -> [MAFNavigationComponent]
}
