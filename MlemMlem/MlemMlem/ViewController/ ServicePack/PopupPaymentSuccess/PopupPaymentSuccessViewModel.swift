//
//  
//  PopupPaymentSuccessViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol PopupPaymentSuccessViewModelProtocol {
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

// MARK: - PopupPaymentSuccess ViewModel
class PopupPaymentSuccessViewModel {
    weak var view: PopupPaymentSuccessViewProtocol?
    private var interactor: PopupPaymentSuccessInteractorInputProtocol

    init(interactor: PopupPaymentSuccessInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - PopupPaymentSuccess ViewModelProtocol
extension PopupPaymentSuccessViewModel: PopupPaymentSuccessViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - PopupPaymentSuccess InteractorOutputProtocol
extension PopupPaymentSuccessViewModel: PopupPaymentSuccessInteractorOutputProtocol {

}
