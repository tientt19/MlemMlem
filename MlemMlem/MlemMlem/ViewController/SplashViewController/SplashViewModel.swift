//
//  
//  SplashViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 07/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol SplashViewModelProtocol {
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

// MARK: - Splash ViewModel
class SplashViewModel {
    weak var view: SplashViewProtocol?
    private var interactor: SplashInteractorInputProtocol

    init(interactor: SplashInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - Splash ViewModelProtocol
extension SplashViewModel: SplashViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - Splash InteractorOutputProtocol
extension SplashViewModel: SplashInteractorOutputProtocol {

}
