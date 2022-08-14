//
//  
//  ControlViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol ControlViewModelProtocol {
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

// MARK: - Control ViewModel
class ControlViewModel {
    weak var view: ControlViewProtocol?
    private var interactor: ControlInteractorInputProtocol

    init(interactor: ControlInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Control ViewModelProtocol
extension ControlViewModel: ControlViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Control InteractorOutputProtocol
extension ControlViewModel: ControlInteractorOutputProtocol {

}
