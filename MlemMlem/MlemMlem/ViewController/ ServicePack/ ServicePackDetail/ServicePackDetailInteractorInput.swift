//
//  
//  ServicePackDetailInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol ServicePackDetailInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol ServicePackDetailInteractorOutputProtocol: AnyObject {
    
}

// MARK: - ServicePackDetail InteractorInput
class ServicePackDetailInteractorInput {
    weak var output: ServicePackDetailInteractorOutputProtocol?
}

// MARK: - ServicePackDetail InteractorInputProtocol
extension ServicePackDetailInteractorInput: ServicePackDetailInteractorInputProtocol {

}
