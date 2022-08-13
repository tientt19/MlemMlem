//
//  
//  ServicePackDetailViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol ServicePackDetailViewModelProtocol {
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

// MARK: - ServicePackDetail ViewModel
class ServicePackDetailViewModel {
    weak var view: ServicePackDetailViewProtocol?
    private var interactor: ServicePackDetailInteractorInputProtocol

    init(interactor: ServicePackDetailInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - ServicePackDetail ViewModelProtocol
extension ServicePackDetailViewModel: ServicePackDetailViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - ServicePackDetail InteractorOutputProtocol
extension ServicePackDetailViewModel: ServicePackDetailInteractorOutputProtocol {

}
