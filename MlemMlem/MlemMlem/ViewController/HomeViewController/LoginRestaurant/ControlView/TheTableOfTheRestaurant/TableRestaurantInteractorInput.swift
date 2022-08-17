//
//  
//  TableRestaurantInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 17/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol TableRestaurantInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol TableRestaurantInteractorOutputProtocol: AnyObject {
    
}

// MARK: - TableRestaurant InteractorInput
class TableRestaurantInteractorInput {
    weak var output: TableRestaurantInteractorOutputProtocol?
}

// MARK: - TableRestaurant InteractorInputProtocol
extension TableRestaurantInteractorInput: TableRestaurantInteractorInputProtocol {

}
