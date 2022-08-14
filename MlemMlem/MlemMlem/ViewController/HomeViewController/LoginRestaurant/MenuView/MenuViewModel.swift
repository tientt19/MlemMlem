//
//  
//  MenuViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol MenuViewModelProtocol {
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

// MARK: - Menu ViewModel
class MenuViewModel {
    weak var view: MenuViewProtocol?
    private var interactor: MenuInteractorInputProtocol

    init(interactor: MenuInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Menu ViewModelProtocol
extension MenuViewModel: MenuViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Menu InteractorOutputProtocol
extension MenuViewModel: MenuInteractorOutputProtocol {

}
