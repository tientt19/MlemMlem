//
//  
//  PaymentMethodViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol PaymentMethodViewModelProtocol {
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

// MARK: - PaymentMethod ViewModel
class PaymentMethodViewModel {
    weak var view: PaymentMethodViewProtocol?
    private var interactor: PaymentMethodInteractorInputProtocol

    init(interactor: PaymentMethodInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - PaymentMethod ViewModelProtocol
extension PaymentMethodViewModel: PaymentMethodViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - PaymentMethod InteractorOutputProtocol
extension PaymentMethodViewModel: PaymentMethodInteractorOutputProtocol {

}
