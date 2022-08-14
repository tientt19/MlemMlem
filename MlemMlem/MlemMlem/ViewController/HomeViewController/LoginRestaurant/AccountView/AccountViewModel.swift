//
//  
//  AccountViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol AccountViewModelProtocol {
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

// MARK: - Account ViewModel
class AccountViewModel {
    weak var view: AccountViewProtocol?
    private var interactor: AccountInteractorInputProtocol

    init(interactor: AccountInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Account ViewModelProtocol
extension AccountViewModel: AccountViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Account InteractorOutputProtocol
extension AccountViewModel: AccountInteractorOutputProtocol {

}
