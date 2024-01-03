//
//  TabsController.swift
//  SocialMediaApp
//
//  Created by Pedro Thomas on 1/3/24.
//

import UIKit

class TabsController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let home = UINavigationController(rootViewController: HomeVC())
    let post = UINavigationController(rootViewController: PostVC())
    let notifications = UINavigationController(rootViewController: NotificationsVC())
    let profile = UINavigationController(rootViewController: ProfileVC())
    
    home.title = "Home"
    post.title = "Post"
    notifications.title = "Notifications"
    profile.title = "Profile"
    
    home.tabBarItem.image = UIImage(systemName: "house")
    post.tabBarItem.image = UIImage(systemName: "plus")
    notifications.tabBarItem.image = UIImage(systemName: "bell")
    profile.tabBarItem.image = UIImage(systemName: "person")
    
    setViewControllers([home, post, notifications, profile], animated: true)
  }
  
}
