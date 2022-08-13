//
//  
//  ListMenuInteractorInput.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol ListMenuInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol ListMenuInteractorOutputProtocol: AnyObject {
    
}

// MARK: - ListMenu InteractorInput
class ListMenuInteractorInput {
    weak var output: ListMenuInteractorOutputProtocol?
}

// MARK: - ListMenu InteractorInputProtocol
extension ListMenuInteractorInput: ListMenuInteractorInputProtocol {

}
