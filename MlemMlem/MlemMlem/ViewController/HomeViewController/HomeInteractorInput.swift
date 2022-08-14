//
//  
//  HomeInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol HomeInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol HomeInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Home InteractorInput
class HomeInteractorInput {
    weak var output: HomeInteractorOutputProtocol?
}

// MARK: - Home InteractorInputProtocol
extension HomeInteractorInput: HomeInteractorInputProtocol {

}
