//
//  
//  KichenShareInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol KichenShareInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol KichenShareInteractorOutputProtocol: AnyObject {
    
}

// MARK: - KichenShare InteractorInput
class KichenShareInteractorInput {
    weak var output: KichenShareInteractorOutputProtocol?
}

// MARK: - KichenShare InteractorInputProtocol
extension KichenShareInteractorInput: KichenShareInteractorInputProtocol {

}
