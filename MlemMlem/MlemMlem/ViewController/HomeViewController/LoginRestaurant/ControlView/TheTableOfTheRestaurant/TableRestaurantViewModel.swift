//
//  
//  TableRestaurantViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 17/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol TableRestaurantViewModelProtocol {
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

// MARK: - TableRestaurant ViewModel
class TableRestaurantViewModel {
    weak var view: TableRestaurantViewProtocol?
    private var interactor: TableRestaurantInteractorInputProtocol

    init(interactor: TableRestaurantInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - TableRestaurant ViewModelProtocol
extension TableRestaurantViewModel: TableRestaurantViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - TableRestaurant InteractorOutputProtocol
extension TableRestaurantViewModel: TableRestaurantInteractorOutputProtocol {

}
