//
//  
//  KichenViewOptionViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol KichenViewOptionViewModelProtocol {
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

// MARK: - KichenViewOption ViewModel
class KichenViewOptionViewModel {
    weak var view: KichenViewOptionViewProtocol?
    private var interactor: KichenViewOptionInteractorInputProtocol

    init(interactor: KichenViewOptionInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - KichenViewOption ViewModelProtocol
extension KichenViewOptionViewModel: KichenViewOptionViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - KichenViewOption InteractorOutputProtocol
extension KichenViewOptionViewModel: KichenViewOptionInteractorOutputProtocol {

}
