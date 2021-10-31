//
//  ModuleBuilder.swift
//  Test-Agilie
//
//  Created by Максим Мирошниченко on 31.10.2021.
//

import Foundation
import UIKit

protocol ModuleBuilderProtocol: AnyObject {
    
    // MARK: - ModuleBuilderProtocol
    
    func buildMapModule(router: RouterProtocol) -> UIViewController
    
}

class ModuleBuilder: ModuleBuilderProtocol {
    
    // MARK: - ModuleBuilder
    
    // MARK: - Protocol methods
    
    func buildMapModule(router: RouterProtocol) -> UIViewController {
        let view = MapViewController()
        let presenter = MapPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
}
