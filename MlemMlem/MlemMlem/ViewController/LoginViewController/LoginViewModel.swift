//
//  
//  LoginViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 07/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol LoginViewModelProtocol {
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

// MARK: - Login ViewModel
class LoginViewModel {
    weak var view: LoginViewProtocol?
    private var interactor: LoginInteractorInputProtocol

    init(interactor: LoginInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Login ViewModelProtocol
extension LoginViewModel: LoginViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Login InteractorOutputProtocol
extension LoginViewModel: LoginInteractorOutputProtocol {

}
