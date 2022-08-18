//
//  
//  DetailTableRestaurantRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol DetailTableRestaurantRouterProtocol {

}

// MARK: - DetailTableRestaurant Router
class DetailTableRestaurantRouter {
    weak var viewController: DetailTableRestaurantViewController?
    
    static func setupModule() -> DetailTableRestaurantViewController {
        let viewController = DetailTableRestaurantViewController()
        let router = DetailTableRestaurantRouter()
        let interactorInput = DetailTableRestaurantInteractorInput()
        let viewModel = DetailTableRestaurantViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - DetailTableRestaurant RouterProtocol
extension DetailTableRestaurantRouter: DetailTableRestaurantRouterProtocol {
    
}
