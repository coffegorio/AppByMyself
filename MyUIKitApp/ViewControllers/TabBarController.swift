//
//  TabBarController.swift
//  AppByMyself
//
//  Created by Егорио on 28.09.2024.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .white
        
        let homeVC = HomePageViewController()
        let newPostVC = NewPostPageController()
        let profileVC = ProfilePageController()
        let settingsVC = SettingsPageController()
        
        let homeNavController = UINavigationController(rootViewController: homeVC)
        let newPostNavController = UINavigationController(rootViewController: newPostVC)
        let profileNavController = UINavigationController(rootViewController: profileVC)
        let settingsNavController = UINavigationController(rootViewController: settingsVC)
        
        homeNavController.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "house"), tag: 0)
        newPostNavController.tabBarItem = UITabBarItem(title: "Новый пост", image: UIImage(systemName: "plus"), tag: 1)
        profileNavController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 2)
        settingsNavController.tabBarItem = UITabBarItem(title: "Настройки", image: UIImage(systemName: "gearshape"), tag: 3)
    
        setViewControllers([homeNavController, newPostNavController, profileNavController, settingsNavController], animated: false)
    }
}

