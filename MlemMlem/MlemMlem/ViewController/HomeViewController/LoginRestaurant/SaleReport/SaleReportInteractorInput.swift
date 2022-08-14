//
//  
//  SaleReportInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol SaleReportInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol SaleReportInteractorOutputProtocol: AnyObject {
    
}

// MARK: - SaleReport InteractorInput
class SaleReportInteractorInput {
    weak var output: SaleReportInteractorOutputProtocol?
}

// MARK: - SaleReport InteractorInputProtocol
extension SaleReportInteractorInput: SaleReportInteractorInputProtocol {

}
