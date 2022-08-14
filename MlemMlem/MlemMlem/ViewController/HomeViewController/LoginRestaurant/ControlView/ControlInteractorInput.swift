//
//  
//  ControlInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol ControlInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol ControlInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Control InteractorInput
class ControlInteractorInput {
    weak var output: ControlInteractorOutputProtocol?
}

// MARK: - Control InteractorInputProtocol
extension ControlInteractorInput: ControlInteractorInputProtocol {

}
