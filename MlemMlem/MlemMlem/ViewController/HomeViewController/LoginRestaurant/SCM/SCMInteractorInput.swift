//
//  
//  SCMInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol SCMInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol SCMInteractorOutputProtocol: AnyObject {
    
}

// MARK: - SCM InteractorInput
class SCMInteractorInput {
    weak var output: SCMInteractorOutputProtocol?
}

// MARK: - SCM InteractorInputProtocol
extension SCMInteractorInput: SCMInteractorInputProtocol {

}
