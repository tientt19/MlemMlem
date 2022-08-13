//
//  
//  ServicePackInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol ServicePackInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol ServicePackInteractorOutputProtocol: AnyObject {
    
}

// MARK: - ServicePack InteractorInput
class ServicePackInteractorInput {
    weak var output: ServicePackInteractorOutputProtocol?
}

// MARK: - ServicePack InteractorInputProtocol
extension ServicePackInteractorInput: ServicePackInteractorInputProtocol {

}
