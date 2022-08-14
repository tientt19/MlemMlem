//
//  
//  CreditCardViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol CreditCardViewModelProtocol {
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

// MARK: - CreditCard ViewModel
class CreditCardViewModel {
    weak var view: CreditCardViewProtocol?
    private var interactor: CreditCardInteractorInputProtocol

    init(interactor: CreditCardInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - CreditCard ViewModelProtocol
extension CreditCardViewModel: CreditCardViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - CreditCard InteractorOutputProtocol
extension CreditCardViewModel: CreditCardInteractorOutputProtocol {

}
