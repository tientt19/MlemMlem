//
//  
//  DishViewModel.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol DishViewModelProtocol {
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

// MARK: - Dish ViewModel
class DishViewModel {
    weak var view: DishViewProtocol?
    private var interactor: DishInteractorInputProtocol

    init(interactor: DishInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Dish ViewModelProtocol
extension DishViewModel: DishViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Dish InteractorOutputProtocol
extension DishViewModel: DishInteractorOutputProtocol {

}
