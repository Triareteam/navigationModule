//
//  NavigationModel.swift
//  BaseAppV2
//
//  Created by Alexander on 08.02.2021.
//

import Foundation
import UIKit

public class NavigationModel {
    
    private(set) var initialViewControllerType: NavigationModuleViewControllerType.Type
    
    public init(initialViewControllerType: NavigationModuleViewControllerType.Type) {
        self.initialViewControllerType = initialViewControllerType
    }
    
    func buildComponent(in navigationModule: NavigationModule, with object: Any?) -> UINavigationController {
        return UINavigationController(rootViewController: initialViewControllerType.init(navigationModule: navigationModule, object: object))
    }
    
}
