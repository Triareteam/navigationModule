//
//  MainBottomNavigationModel.swift
//  AuthModule
//
//  Created by Alexander on 18.05.2020.
//  Copyright © 2020 triare. All rights reserved.
//

import Foundation
import UIKit

public class NavigationSetModel: NavigationModel {
    
    var title: String?
    var imageName: String?

    public init(title: String?, imageName: String?, initialViewControllerType: NavigationModuleViewController.Type) {
        self.title = title
        self.imageName = imageName
        super.init(initialViewControllerType: initialViewControllerType)
    }
    
    override func buildComponent(in navigationModule: NavigationModule, with object: Any?) -> UINavigationController {
        let image = UIImage(named: imageName ?? "", in: Bundle(for: initialViewControllerType.self), with: nil)
        let tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
        let navigationController = UINavigationController(rootViewController: initialViewControllerType.init(navigationModule: navigationModule, object: object))
        navigationController.tabBarItem = tabBarItem
        return navigationController
    }
}
