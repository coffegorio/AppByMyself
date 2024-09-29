//
//  ProfilePageController.swift
//  AppByMyself
//
//  Created by Егорио on 28.09.2024.
//

import UIKit

class ProfilePageController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Настройка навбара для главной страницы
        NavBarView.setupNavigationBar(for: self,
                                      title: "Профиль",  // передаём заголовок
                                      goToMessagesAction: #selector(goToMessages),
                                      goToNotificationsAction: #selector(goToNotifications))
    }
    
    @objc func goToMessages() {
        let messagesVC = MessagesPageController()
        navigationController?.pushViewController(messagesVC, animated: true)
    }
    
    @objc func goToNotifications() {
        let notificationVC = NotificationPageController()
        navigationController?.pushViewController(notificationVC, animated: true)
    }
}
