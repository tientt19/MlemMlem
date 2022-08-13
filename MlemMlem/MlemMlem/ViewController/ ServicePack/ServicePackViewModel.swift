//
//  
//  ServicePackViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol ServicePackViewModelProtocol {
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

// MARK: - ServicePack ViewModel
class ServicePackViewModel {
    weak var view: ServicePackViewProtocol?
    private var interactor: ServicePackInteractorInputProtocol

    init(interactor: ServicePackInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - ServicePack ViewModelProtocol
extension ServicePackViewModel: ServicePackViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - ServicePack InteractorOutputProtocol
extension ServicePackViewModel: ServicePackInteractorOutputProtocol {

}
