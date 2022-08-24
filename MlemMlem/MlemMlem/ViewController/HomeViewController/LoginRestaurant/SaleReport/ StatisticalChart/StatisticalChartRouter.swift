//
//  
//  StatisticalChartRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol StatisticalChartRouterProtocol {

}

// MARK: - StatisticalChart Router
class StatisticalChartRouter {
    weak var viewController: StatisticalChartViewController?
    
    static func setupModule() -> StatisticalChartViewController {
        let viewController = StatisticalChartViewController()
        let router = StatisticalChartRouter()
        let interactorInput = StatisticalChartInteractorInput()
        let viewModel = StatisticalChartViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - StatisticalChart RouterProtocol
extension StatisticalChartRouter: StatisticalChartRouterProtocol {
    
}
