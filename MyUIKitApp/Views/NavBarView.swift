//
//  HomePageNavBarView.swift
//  MyUIKitApp
//
//  Created by Егорио on 29.09.2024.
//

import UIKit

class HomePageNavBarView {
    
    static func setupNavigationBar(for viewController: UIViewController,
                                   goToMessagesAction: Selector,
                                   goToSettingsAction: Selector) {
        // Настройка заголовка с левой стороны
        let titleLabel = UILabel()
        titleLabel.text = "Главная"
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.textColor = .black
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: titleLabel)
        
        // Кнопка 1 (например, переход на экран сообщений)
        let button1 = UIBarButtonItem(
            image: UIImage(systemName: "message"),
            style: .plain,
            target: viewController,
            action: goToMessagesAction
        )
        
        // Кнопка 2 (например, переход на экран настроек)
        let button2 = UIBarButtonItem(
            image: UIImage(systemName: "gearshape"),
            style: .plain,
            target: viewController,
            action: goToSettingsAction
        )
        
        // Добавляем обе кнопки справа
        viewController.navigationItem.rightBarButtonItems = [button2, button1]
    }
}

