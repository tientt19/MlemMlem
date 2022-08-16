//
//  
//  KitchenViewInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 16/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol KitchenViewInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol KitchenViewInteractorOutputProtocol: AnyObject {
    
}

// MARK: - KitchenView InteractorInput
class KitchenViewInteractorInput {
    weak var output: KitchenViewInteractorOutputProtocol?
}

// MARK: - KitchenView InteractorInputProtocol
extension KitchenViewInteractorInput: KitchenViewInteractorInputProtocol {

}
