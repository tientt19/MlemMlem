//
//  
//  SplashInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 07/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol SplashInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol SplashInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Splash InteractorInput
class SplashInteractorInput {
    weak var output: SplashInteractorOutputProtocol?
}

// MARK: - Splash InteractorInputProtocol
extension SplashInteractorInput: SplashInteractorInputProtocol {

}
