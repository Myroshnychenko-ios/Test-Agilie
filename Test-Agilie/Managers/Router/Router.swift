//
//  Router.swift
//  Test-Agilie
//
//  Created by Максим Мирошниченко on 31.10.2021.
//

import Foundation
import UIKit

protocol RouterProtocol: AnyObject {
    
    // MARK: - RouterProtocol
    
    init(navigationController: UINavigationController, moduleBuilder: ModuleBuilderProtocol)
    func initViewController()
    
}

class Router: RouterProtocol {
    
    // MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder: ModuleBuilderProtocol?
    
    // MARK: - Lifeycle
    
    required init(navigationController: UINavigationController, moduleBuilder: ModuleBuilderProtocol) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    // MARK: - Protocol methods
    
    func initViewController() {
        if let navigationController = navigationController {
            guard let mapViewController = moduleBuilder?.buildMapModule(router: self) else { return }
            navigationController.viewControllers = [mapViewController]
        }
    }
    
}
