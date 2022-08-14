//
//  
//  HomeViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol HomeViewModelProtocol {
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

// MARK: - Home ViewModel
class HomeViewModel {
    weak var view: HomeViewProtocol?
    private var interactor: HomeInteractorInputProtocol

    init(interactor: HomeInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Home ViewModelProtocol
extension HomeViewModel: HomeViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Home InteractorOutputProtocol
extension HomeViewModel: HomeInteractorOutputProtocol {

}
