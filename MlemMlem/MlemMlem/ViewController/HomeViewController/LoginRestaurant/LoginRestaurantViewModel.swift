//
//  
//  LoginRestaurantViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol LoginRestaurantViewModelProtocol {
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

// MARK: - LoginRestaurant ViewModel
class LoginRestaurantViewModel {
    weak var view: LoginRestaurantViewProtocol?
    private var interactor: LoginRestaurantInteractorInputProtocol

    init(interactor: LoginRestaurantInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - LoginRestaurant ViewModelProtocol
extension LoginRestaurantViewModel: LoginRestaurantViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - LoginRestaurant InteractorOutputProtocol
extension LoginRestaurantViewModel: LoginRestaurantInteractorOutputProtocol {

}
