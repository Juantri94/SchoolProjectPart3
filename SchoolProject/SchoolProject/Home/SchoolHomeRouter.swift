//
//  SchoolHomeRouter.swift
//  SchoolProject
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import StudentFramework

final class SchoolHomeRouter {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    static func get() -> SchoolHomeViewController {
        
        // Init
        let router = SchoolHomeRouter()
        let viewModel = SchoolHomeViewModel(router: router)
        let viewController = SchoolHomeViewController(viewModel: viewModel)
        
        // View Model
        viewModel.setViewProtocol(viewController)
        
        // Router
        router.viewController = viewController
        
        return viewController
    }
    
    //------------------------------------------------
    // MARK: - Variables
    //------------------------------------------------
    
    private var viewController: SchoolHomeViewController?
    
    //------------------------------------------------
    // MARK: - Router
    //------------------------------------------------
    
    func openStudentFramework() {
        let vc = StudentInteractor.studentHome
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
}
