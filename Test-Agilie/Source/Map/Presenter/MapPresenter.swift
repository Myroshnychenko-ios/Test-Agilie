//
//  MapPresenter.swift
//  Test-Agilie
//
//  Created by Максим Мирошниченко on 31.10.2021.
//

import Foundation

protocol MapViewProtocol: AnyObject {
    
    // MARK: - MapViewProtocol
    
}

protocol MapPresenterProtocol: AnyObject {
    
    // MARK: - MapPresenterProtocol
    
    init(view: MapViewProtocol, router: RouterProtocol)
    func didLoad()
    
}

class MapPresenter: MapPresenterProtocol {
    
    // MARK: - MapPresenter
    
    // MARK: - Variables
    
    weak var view: MapViewProtocol?
    var router: RouterProtocol?
    
    // MARK: - Lifecycle
    
    required init(view: MapViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }
    
    // MARK: - Protocol methods
    
    func didLoad() {
        
    }
    
}
