//
//  UserModule.swift
//  NavigationRegistry
//
//  Created by ナム Nam Nguyen on 11/9/21.
//  Email: nhnam.develop@gmail.com

import MAFNavigationRegistry

public struct UserModule {
  public static var userModuleRegistry: MAFModuleRegistry = MAFModuleRegistry(
    module: "user",
    stacks: [
      MAFNavigationComponent(
        screen: "main",
        component: UserRootViewController.self
      ),
      MAFNavigationComponent(
        screen: "profile",
        component: UserRootViewController.self
      ),
      MAFNavigationComponent(
        screen: "userDetails",
        component: UserDetailsViewController.self
      )
    ])
}

import NewsFeed

func openNewsFeed() {
  let newsfeedViewController = NewsFeedViewController()
  self.navigationController?.show(newsfeedViewController, sender: nil)
}
