//
//  
//  MenuInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol MenuInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol MenuInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Menu InteractorInput
class MenuInteractorInput {
    weak var output: MenuInteractorOutputProtocol?
}

// MARK: - Menu InteractorInputProtocol
extension MenuInteractorInput: MenuInteractorInputProtocol {

}
