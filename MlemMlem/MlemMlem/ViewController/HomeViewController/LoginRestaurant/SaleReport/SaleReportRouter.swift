//
//  
//  SaleReportRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol SaleReportRouterProtocol {

}

// MARK: - SaleReport Router
class SaleReportRouter {
    weak var viewController: SaleReportViewController?
    
    static func setupModule() -> SaleReportViewController {
        let viewController = SaleReportViewController()
        let router = SaleReportRouter()
        let interactorInput = SaleReportInteractorInput()
        let viewModel = SaleReportViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - SaleReport RouterProtocol
extension SaleReportRouter: SaleReportRouterProtocol {
    
}
