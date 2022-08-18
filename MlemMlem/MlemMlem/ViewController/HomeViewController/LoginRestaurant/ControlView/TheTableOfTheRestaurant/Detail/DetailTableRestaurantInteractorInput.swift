//
//  
//  DetailTableRestaurantInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol DetailTableRestaurantInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol DetailTableRestaurantInteractorOutputProtocol: AnyObject {
    
}

// MARK: - DetailTableRestaurant InteractorInput
class DetailTableRestaurantInteractorInput {
    weak var output: DetailTableRestaurantInteractorOutputProtocol?
}

// MARK: - DetailTableRestaurant InteractorInputProtocol
extension DetailTableRestaurantInteractorInput: DetailTableRestaurantInteractorInputProtocol {

}
