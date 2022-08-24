//
//  
//  StatisticalChartViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol StatisticalChartViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - StatisticalChart ViewController
class StatisticalChartViewController: BaseViewController {
    var router: StatisticalChartRouterProtocol!
    var viewModel: StatisticalChartViewModelProtocol!
    
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {

    }
    
    // MARK: - Action
    
}

// MARK: - StatisticalChart ViewProtocol
extension StatisticalChartViewController: StatisticalChartViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
