//
//  HomePageNavBarView.swift
//  MyUIKitApp
//
//  Created by Егорио on 29.09.2024.
//

import UIKit

class NavBarView {
    
    static func setupNavigationBar(for viewController: UIViewController,
                                   title: String, // добавлен параметр для заголовка
                                   goToMessagesAction: Selector,
                                   goToNotificationsAction: Selector) {
        
        func createTitleLabel(withText text: String) -> UILabel {
            let titleLabel = UILabel()
            titleLabel.text = text
            titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            titleLabel.textColor = .black
            return titleLabel
        }
        
        func createNotificationButton() -> UIBarButtonItem {
            return UIBarButtonItem(
                image: UIImage(systemName: "bell"),
                style: .plain,
                target: viewController,
                action: goToNotificationsAction
            )
        }
        
        func createMessagesButton() -> UIBarButtonItem {
            return UIBarButtonItem(
                image: UIImage(systemName: "message"),
                style: .plain,
                target: viewController,
                action: goToMessagesAction
            )
        }
        
        // Установка заголовка слева
        let titleLabel = createTitleLabel(withText: title) // используем переданный заголовок
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: titleLabel)
        
        // Установка кнопок справа
        let notificationButton = createNotificationButton()
        let messagesButton = createMessagesButton()
        viewController.navigationItem.rightBarButtonItems = [notificationButton, messagesButton]
    }
}
