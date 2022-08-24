//
//  
//  StatisticalChartInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol StatisticalChartInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol StatisticalChartInteractorOutputProtocol: AnyObject {
    
}

// MARK: - StatisticalChart InteractorInput
class StatisticalChartInteractorInput {
    weak var output: StatisticalChartInteractorOutputProtocol?
}

// MARK: - StatisticalChart InteractorInputProtocol
extension StatisticalChartInteractorInput: StatisticalChartInteractorInputProtocol {

}
