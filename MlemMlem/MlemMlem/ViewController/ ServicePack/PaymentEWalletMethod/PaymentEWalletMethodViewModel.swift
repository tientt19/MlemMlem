//
//  
//  PaymentEWalletMethodViewModel.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol PaymentEWalletMethodViewModelProtocol {
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

// MARK: - PaymentEWalletMethod ViewModel
class PaymentEWalletMethodViewModel {
    weak var view: PaymentEWalletMethodViewProtocol?
    private var interactor: PaymentEWalletMethodInteractorInputProtocol

    init(interactor: PaymentEWalletMethodInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - PaymentEWalletMethod ViewModelProtocol
extension PaymentEWalletMethodViewModel: PaymentEWalletMethodViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - PaymentEWalletMethod InteractorOutputProtocol
extension PaymentEWalletMethodViewModel: PaymentEWalletMethodInteractorOutputProtocol {

}
