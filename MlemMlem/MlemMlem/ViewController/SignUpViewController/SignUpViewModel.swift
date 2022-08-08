//
//  
//  SignUpViewModel.swift
//  MlemMlem
//
//  Created by Tiến Trần on 08/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol SignUpViewModelProtocol {
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

// MARK: - SignUp ViewModel
class SignUpViewModel {
    weak var view: SignUpViewProtocol?
    private var interactor: SignUpInteractorInputProtocol

    init(interactor: SignUpInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - SignUp ViewModelProtocol
extension SignUpViewModel: SignUpViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - SignUp InteractorOutputProtocol
extension SignUpViewModel: SignUpInteractorOutputProtocol {

}
