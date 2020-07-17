//
//  StudentDetailRouter.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation

final class StudentDetailRouter {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    static func get() -> StudentDetailViewController {
        
        // Init
        let router = StudentDetailRouter()
        let viewModel = StudentDetailViewModel(router: router)
        let viewController = StudentDetailViewController(viewModel: viewModel)
        
        // View Model
        viewModel.setViewProtocol(viewController)
        
        // Router
        router.viewController = viewController
        
        return viewController
    }
    
    //------------------------------------------------
    // MARK: - Variables
    //------------------------------------------------
    
    private var viewController: StudentDetailViewController?
    
}
