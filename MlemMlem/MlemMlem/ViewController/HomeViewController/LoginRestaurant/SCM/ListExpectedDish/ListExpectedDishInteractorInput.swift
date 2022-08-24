//
//  
//  ListExpectedDishInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
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
