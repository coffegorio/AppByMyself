//
//  ThirdStartScreenViewController.swift
//  AppByMyself
//
//  Created by Егорио on 28.09.2024.
//

import UIKit

class ThirdStartScreenViewController: BaseStartScreenViewController {

    private let startScreenButton = UIButton.createStartScreenButton(withTitle: "Вперед!")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure(mainText: "Кастомизируйте свой профиль",
                  secondaryText: "Сделайте свой профиль уникальным! Выбирайте фото, настраивайте биографию...",
                  imageName: "profile")
        setupButton()
    }

    private func setupButton() {
        view.addSubview(startScreenButton)
        let screenWidth = UIScreen.main.bounds.width
        
        NSLayoutConstraint.activate([
            // Устанавливаем отступы для кнопки
            startScreenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20), // Отступ от левого края
            startScreenButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20), // Отступ от нижнего края
            startScreenButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.4), // Ширина кнопки
            startScreenButton.heightAnchor.constraint(equalToConstant: 50) // Высота кнопки
        ])
        
        startScreenButton.addTarget(self, action: #selector(goHomeScreen), for: .touchUpInside)
    }

    @objc private func goHomeScreen() {
        let homeScreen = TabBarController()
        homeScreen.modalPresentationStyle = .fullScreen
        self.present(homeScreen, animated: true, completion: nil)
    }
}

