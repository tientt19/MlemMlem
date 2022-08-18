//
//  
//  DetailTableRestaurantViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol DetailTableRestaurantViewModelProtocol {
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

// MARK: - DetailTableRestaurant ViewModel
class DetailTableRestaurantViewModel {
    weak var view: DetailTableRestaurantViewProtocol?
    private var interactor: DetailTableRestaurantInteractorInputProtocol

    init(interactor: DetailTableRestaurantInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - DetailTableRestaurant ViewModelProtocol
extension DetailTableRestaurantViewModel: DetailTableRestaurantViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - DetailTableRestaurant InteractorOutputProtocol
extension DetailTableRestaurantViewModel: DetailTableRestaurantInteractorOutputProtocol {

}
