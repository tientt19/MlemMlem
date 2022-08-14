//
//  
//  SCMViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol SCMViewModelProtocol {
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

// MARK: - SCM ViewModel
class SCMViewModel {
    weak var view: SCMViewProtocol?
    private var interactor: SCMInteractorInputProtocol

    init(interactor: SCMInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - SCM ViewModelProtocol
extension SCMViewModel: SCMViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - SCM InteractorOutputProtocol
extension SCMViewModel: SCMInteractorOutputProtocol {

}
