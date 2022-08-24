//
//  
//  StatisticalChartViewModel.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol StatisticalChartViewModelProtocol {
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

// MARK: - StatisticalChart ViewModel
class StatisticalChartViewModel {
    weak var view: StatisticalChartViewProtocol?
    private var interactor: StatisticalChartInteractorInputProtocol

    init(interactor: StatisticalChartInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - StatisticalChart ViewModelProtocol
extension StatisticalChartViewModel: StatisticalChartViewModelProtocol {
    func onViewDidLoad() {
        
    }
}

// MARK: - StatisticalChart InteractorOutputProtocol
extension StatisticalChartViewModel: StatisticalChartInteractorOutputProtocol {

}
