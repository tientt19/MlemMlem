//
//  
//  KitchenViewViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 16/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol KitchenViewViewModelProtocol {
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

// MARK: - KitchenView ViewModel
class KitchenViewViewModel {
    weak var view: KitchenViewViewProtocol?
    private var interactor: KitchenViewInteractorInputProtocol

    init(interactor: KitchenViewInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - KitchenView ViewModelProtocol
extension KitchenViewViewModel: KitchenViewViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - KitchenView InteractorOutputProtocol
extension KitchenViewViewModel: KitchenViewInteractorOutputProtocol {

}
