//
//  
//  ListMenuViewModel.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit
import Rswift

// MARK: - ViewModelProtocol
protocol ListMenuViewModelProtocol {
    func onViewDidLoad()
    //func onViewDidAppear()
    
    // UITableView
//    func numberOfSections() -> Int
    func numberOfRows() -> Int
//    func cellForRow(at indexPath: IndexPath) -> Any?
    func didSelectRow(at indexPath: IndexPath)
    
    // UICollectionView
    //func numberOfItems() -> Int
    //func cellForItem(at indexPath: IndexPath) -> Any
    //func didSelectItem(at indexPath: IndexPath)
}

// MARK: - ListMenu ViewModel
class ListMenuViewModel {
    var listMenu: [String] = ["Món yêu thích","Best Collections","Món Hot trong tuần","Best Sellers"]
    weak var view: ListMenuViewProtocol?
    private var interactor: ListMenuInteractorInputProtocol

    init(interactor: ListMenuInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - ListMenu ViewModelProtocol
extension ListMenuViewModel: ListMenuViewModelProtocol {
    
    func numberOfRows() -> Int {
        return listMenu.count
    }
    
//    func cellForRow(at indexPath: IndexPath) -> Any? {
//
//    }
    
    func didSelectRow(at indexPath: IndexPath) {
        
    }
    
    func onViewDidLoad() {
        
    }
}

// MARK: - ListMenu InteractorOutputProtocol
extension ListMenuViewModel: ListMenuInteractorOutputProtocol {

}
