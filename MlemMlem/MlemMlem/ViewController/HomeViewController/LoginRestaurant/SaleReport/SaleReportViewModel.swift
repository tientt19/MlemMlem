//
//  
//  SaleReportViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol SaleReportViewModelProtocol {
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

// MARK: - SaleReport ViewModel
class SaleReportViewModel {
    weak var view: SaleReportViewProtocol?
    private var interactor: SaleReportInteractorInputProtocol

    init(interactor: SaleReportInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - SaleReport ViewModelProtocol
extension SaleReportViewModel: SaleReportViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - SaleReport InteractorOutputProtocol
extension SaleReportViewModel: SaleReportInteractorOutputProtocol {

}
