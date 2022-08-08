//
//  
//  ConfirmSignUpViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 08/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol ConfirmSignUpViewModelProtocol {
    func onViewDidLoad()
    //func onViewDidAppear()
    
    // UITableView
    //func numberOfSections() -> Int
    //func numberOfRows() -> Int
    //func cellForRow(at indexPath: IndexPath) -> Any?
    //func didSelectRow(at indexPath: IndexPath)
    
    // UICollectionView
    //func numberOfItems() -> Int
    //func cellForItem(at indexPath: IndexPath) -> Any
    //func didSelectItem(at indexPath: IndexPath)
}

// MARK: - ConfirmSignUp ViewModel
class ConfirmSignUpViewModel {
    weak var view: ConfirmSignUpViewProtocol?
    private var interactor: ConfirmSignUpInteractorInputProtocol

    init(interactor: ConfirmSignUpInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - ConfirmSignUp ViewModelProtocol
extension ConfirmSignUpViewModel: ConfirmSignUpViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - ConfirmSignUp InteractorOutputProtocol
extension ConfirmSignUpViewModel: ConfirmSignUpInteractorOutputProtocol {

}
