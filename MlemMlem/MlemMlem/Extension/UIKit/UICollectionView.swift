//
//  UICollectionView.swift
//  MlemMlem
//
//  Created by TruongTV2 on 17/08/2022.
//

import Foundation
import UIKit

extension UICollectionView {
    func registerCell<T: UICollectionViewCell>(ofType _ : T.Type) {
        register(T.self, forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func registerNib<T: UICollectionViewCell>(ofType _ : T.Type) {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        register(nib, forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueCell<T: UICollectionViewCell>(ofType _ : T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(String(describing: T.self))")
        }
        return cell
    }
}

extension UICollectionView {
    func scroll(to: ScrollsTo, animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(300)) {
            let numberOfSections = self.numberOfSections
            let numberOfRows = self.numberOfItems(inSection: numberOfSections-1)
            switch to {
            case .top:
                if numberOfRows > 0 {
                    let indexPath = IndexPath(row: 0, section: 0)
                    self.scrollToItem(at: indexPath, at: .top, animated: animated)
                }
                
            case .bottom:
                if numberOfRows > 0 {
                    let indexPath = IndexPath(row: numberOfRows-1, section: (numberOfSections-1))
                    self.scrollToItem(at: indexPath, at: .bottom, animated: animated)
                }
            }
        }
    }
    
    enum ScrollsTo {
        case top, bottom
    }
}

extension UICollectionView {
    func reloadDataWithCompletion(completion: @escaping ()->()) {
        UIView.animate(withDuration: 0, animations: reloadData)
        { _ in completion() }
    }
}
