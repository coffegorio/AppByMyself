//
//  SettingsPageController.swift
//  AppByMyself
//
//  Created by Егорио on 28.09.2024.
//

import UIKit

class SettingsPageController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        createCenterTextLabel()
    }
    
    private func createCenterTextLabel() {
        let mainLabel = UILabel()
        mainLabel.text = "А тут пока что ничего нет :)"
        mainLabel.textAlignment = .center
        mainLabel.font = .systemFont(ofSize: 20, weight: .bold)
        mainLabel.textColor = .black
        
        // Включаем авто-верстку
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Добавляем mainLabel в иерархию представлений
        view.addSubview(mainLabel)
        
        // Активируем констрейнты для центрирования
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}



