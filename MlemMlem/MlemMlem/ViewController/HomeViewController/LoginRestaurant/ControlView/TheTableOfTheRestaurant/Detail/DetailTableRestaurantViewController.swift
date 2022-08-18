//
//  
//  DetailTableRestaurantViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol DetailTableRestaurantViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - DetailTableRestaurant ViewController
class DetailTableRestaurantViewController: BaseViewController {
    var router: DetailTableRestaurantRouterProtocol!
    var viewModel: DetailTableRestaurantViewModelProtocol!
    var numberOfTable: Int = 0
    
    @IBOutlet weak var lbl_numberOfTable: UILabel!
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Chi Tiết Hoạt Động").setBackListener {
                self.navigationController?.popViewController(animated: true)
            }.done()
        }
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        lbl_numberOfTable.text = "Bàn \(numberOfTable)"
    }
    
    // MARK: - Action
    
}

// MARK: - DetailTableRestaurant ViewProtocol
extension DetailTableRestaurantViewController: DetailTableRestaurantViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
