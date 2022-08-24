//
//  
//  ListExpectedDishViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol ListExpectedDishViewModelProtocol {
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

// MARK: - ListExpectedDish ViewModel
class ListExpectedDishViewModel {
    weak var view: ListExpectedDishViewProtocol?
    private var interactor: ListExpectedDishInteractorInputProtocol

    init(interactor: ListExpectedDishInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - ListExpectedDish ViewModelProtocol
extension ListExpectedDishViewModel: ListExpectedDishViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - ListExpectedDish InteractorOutputProtocol
extension ListExpectedDishViewModel: ListExpectedDishInteractorOutputProtocol {

}
