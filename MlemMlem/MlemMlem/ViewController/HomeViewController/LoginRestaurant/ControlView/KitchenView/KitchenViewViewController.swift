//
//  
//  KitchenViewViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 16/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol KitchenViewViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - KitchenView ViewController
class KitchenViewViewController: BaseViewController {
    var router: KitchenViewRouterProtocol!
    var viewModel: KitchenViewViewModelProtocol!
    
    @IBOutlet weak var tbv_TableView: UITableView!
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Kitchen View").setBackListener {
                self.navigationController?.popViewController(animated: true )
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
        self.setIntTableView()
    }
    
    // MARK: - Action
    
}

extension KitchenViewViewController: UITableViewDataSource {
    func setIntTableView() {
        self.tbv_TableView.registerNib(ofType: CellTableViewKitchenView.self)
        self.tbv_TableView.delegate = self
        self.tbv_TableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: CellTableViewKitchenView.self, for: indexPath)
        if indexPath.row % 2 == 0 {
//            let textDish = UILabel()
//            textDish.text = "Lobster Roll"
//            textDish.font = UIFont(name: "Inter-Semibold", size: 11.0)
//            let textAmountDish = UILabel()
//            textAmountDish.text = "3"
//            textAmountDish.font = UIFont(name: "Inter-Medium", size: 11.0)
//            textAmountDish.textAlignment = .right
//            textAmountDish.textColor = .Gray7A8598
//            cell.stack_dish.insertArrangedSubview(textDish, at: 0)
//            cell.stack_AmountDish.insertArrangedSubview(textAmountDish, at: 0)
            cell.backgroundColor = .GrayF4F4F7
            
        } else {
            
            cell.backgroundColor = .white
        }
        return cell
    }
}

extension KitchenViewViewController: UITableViewDelegate {
    
}

// MARK: - KitchenView ViewProtocol
extension KitchenViewViewController: KitchenViewViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
