//
//  
//  ListExpectedDishInteractorInput.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/20/22.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol ListExpectedDishInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol ListExpectedDishInteractorOutputProtocol: AnyObject {
    
}

// MARK: - ListExpectedDish InteractorInput
class ListExpectedDishInteractorInput {
    weak var output: ListExpectedDishInteractorOutputProtocol?
}

// MARK: - ListExpectedDish InteractorInputProtocol
extension ListExpectedDishInteractorInput: ListExpectedDishInteractorInputProtocol {

}
