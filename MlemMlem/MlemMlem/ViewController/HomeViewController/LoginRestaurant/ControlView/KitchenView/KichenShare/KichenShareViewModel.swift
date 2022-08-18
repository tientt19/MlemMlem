//
//  
//  KichenShareViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol KichenShareViewModelProtocol {
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

// MARK: - KichenShare ViewModel
class KichenShareViewModel {
    weak var view: KichenShareViewProtocol?
    private var interactor: KichenShareInteractorInputProtocol

    init(interactor: KichenShareInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - KichenShare ViewModelProtocol
extension KichenShareViewModel: KichenShareViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - KichenShare InteractorOutputProtocol
extension KichenShareViewModel: KichenShareInteractorOutputProtocol {

}
