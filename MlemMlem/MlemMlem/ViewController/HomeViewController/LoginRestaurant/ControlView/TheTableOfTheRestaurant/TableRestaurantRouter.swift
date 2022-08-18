//
//  
//  TableRestaurantRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 17/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol TableRestaurantRouterProtocol {
    func gotoDetaiTable(_ numberOfTable: Int)
}

// MARK: - TableRestaurant Router
class TableRestaurantRouter {
    weak var viewController: TableRestaurantViewController?
    
    static func setupModule() -> TableRestaurantViewController {
        let viewController = TableRestaurantViewController()
        let router = TableRestaurantRouter()
        let interactorInput = TableRestaurantInteractorInput()
        let viewModel = TableRestaurantViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - TableRestaurant RouterProtocol
extension TableRestaurantRouter: TableRestaurantRouterProtocol {
    func gotoDetaiTable(_ numberOfTable: Int) {
        let viewController = DetailTableRestaurantRouter.setupModule()
        viewController.numberOfTable = numberOfTable
        viewController.modalPresentationStyle = .fullScreen
        viewController.navigationController?.pushViewController(viewController, animated: true)
    }
}
