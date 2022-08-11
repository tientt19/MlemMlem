//
//  
//  RestaurantUpdateViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol RestaurantUpdateViewModelProtocol {
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

// MARK: - RestaurantUpdate ViewModel
class RestaurantUpdateViewModel {
    weak var view: RestaurantUpdateViewProtocol?
    private var interactor: RestaurantUpdateInteractorInputProtocol

    init(interactor: RestaurantUpdateInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - RestaurantUpdate ViewModelProtocol
extension RestaurantUpdateViewModel: RestaurantUpdateViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - RestaurantUpdate InteractorOutputProtocol
extension RestaurantUpdateViewModel: RestaurantUpdateInteractorOutputProtocol {

}
