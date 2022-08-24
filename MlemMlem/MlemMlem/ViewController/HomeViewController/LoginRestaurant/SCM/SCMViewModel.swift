//
//  
//  SCMViewModel.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol SCMViewModelProtocol {
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
    func createPageViewController(fromIndex index: Int) -> UIViewController
    func getViewController(forViewController vc: UIViewController, isNextController: Bool) -> UIViewController?
}

// MARK: - SCM ViewModel
class SCMViewModel {
    weak var view: SCMViewProtocol?
    private var interactor: SCMInteractorInputProtocol
    var listController: [UIViewController] = [
        ListExpectedDishRouter.setupModule(),
        ListExpectedDishRouter.setupModule(),
        ListExpectedDishRouter.setupModule()
    ]
    init(interactor: SCMInteractorInputProtocol) {
        self.interactor = interactor
    }

}

// MARK: - SCM ViewModelProtocol
extension SCMViewModel: SCMViewModelProtocol {
    func getViewController(forViewController vc: UIViewController, isNextController: Bool) -> UIViewController? {
        var index: Int = 0
        isNextController ? (index += 1) : (index -= 1)
        if isNextController {
            if listController.count > index {
                return createPageViewController(fromIndex: index)
            }else{
                return nil
            }
        }else{
            if index >= 0 {
                return createPageViewController(fromIndex: index)
            }else{
                return nil
            }
        }
    }
    
    func createPageViewController(fromIndex index: Int) -> UIViewController {
        let viewController = listController[index]
        return viewController
    }
    
    func onViewDidLoad() {
        
    }
}

// MARK: - SCM InteractorOutputProtocol
extension SCMViewModel: SCMInteractorOutputProtocol {

}
