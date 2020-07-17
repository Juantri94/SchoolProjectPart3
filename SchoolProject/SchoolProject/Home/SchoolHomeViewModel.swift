//
//  SchoolHomeViewModel.swift
//  SchoolProject
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import Alamofire

final class SchoolHomeViewModel {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(router: SchoolHomeRouter) {
        self.router = router
    }
    
    func setViewProtocol(_ view: SchoolHomeViewControllerProtocol) {
        self.view = view
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private weak var view: SchoolHomeViewControllerProtocol?
    private var router: SchoolHomeRouter?
    
    //------------------------------------------------
    // MARK: - ViewModel
    //------------------------------------------------
    
    func openStudentFramework() {
        self.router?.openStudentFramework()
    }
    
    func printEnvironment() {
        #if DEBUG
        print("Debug school environment")
        #elseif PRE
        print("Prerelease school environment")
        #else
        print("Release school environment")
        #endif
    }
    
    //------------------------------------------------
    // MARK: - Alamofire
    //------------------------------------------------
    
    func alamofireExample() {
        let url = "https://cat-fact.herokuapp.com/facts/random"
        
        AF.request(url, method: .get, encoding: JSONEncoding.default).validate(statusCode: 200..<300).responseJSON { response in
            
            switch response.result {
            case .success(let responseBody):
                print(responseBody)
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
}
