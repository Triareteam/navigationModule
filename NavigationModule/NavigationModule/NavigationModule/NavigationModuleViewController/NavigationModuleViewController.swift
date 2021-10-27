//
//  BaseViewController.swift
//  Nutrihorse
//
//  Created by Alexander on 07.09.2020.
//  Copyright ©  2020 Nutrihorse. All rights reserved.
//

import UIKit

public protocol NavigationModuleViewControllerType where Self: UIViewController {
    var navigationModule: NavigationModule? { get }
    init(navigationModule: NavigationModule?, object: Any?)
}

open class NavigationModuleViewController: UIViewController, NavigationModuleViewControllerType {
    
    public var navigationModule: NavigationModule?
    
    deinit {
        print("\(type(of: self)) deinited")
    }
    
    public init(navigationModule: NavigationModule? = nil, object: Any? = nil, bundle: Bundle?) {
        self.navigationModule = navigationModule
        super.init(nibName: String(describing: type(of: self)), bundle: bundle)
    }
    
    required public init(navigationModule: NavigationModule? = nil, object: Any? = nil) {
        self.navigationModule = navigationModule
        super.init(nibName: String(describing: type(of: self)), bundle: Bundle(for: Self.self))
    }
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func endEdit() {
        self.view.endEditing(true)
    }
    
}
