//
//  FirstStartScreenViewController.swift
//  AppByMyself
//
//  Created by Егорио on 28.09.2024.
//

import UIKit

class FirstStartScreenViewController: BaseStartScreenViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure(mainText: "Создавайте заметки",
                  secondaryText: "Оставайтесь организованными, создавая личные заметки для любых целей — будь то задачи на день, идеи для проектов или просто мысли, которые нужно зафиксировать. Вы можете добавлять заголовки, описания и важные метки, чтобы легко находить нужную информацию. Все ваши заметки всегда будут под рукой.",
                  imageName: "todo")
    }
}
