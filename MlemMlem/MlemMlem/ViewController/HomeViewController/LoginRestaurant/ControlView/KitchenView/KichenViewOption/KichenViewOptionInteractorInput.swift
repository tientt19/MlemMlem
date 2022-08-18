//
//  
//  KichenViewOptionInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol KichenViewOptionInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol KichenViewOptionInteractorOutputProtocol: AnyObject {
    
}

// MARK: - KichenViewOption InteractorInput
class KichenViewOptionInteractorInput {
    weak var output: KichenViewOptionInteractorOutputProtocol?
}

// MARK: - KichenViewOption InteractorInputProtocol
extension KichenViewOptionInteractorInput: KichenViewOptionInteractorInputProtocol {

}
