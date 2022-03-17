//
//  FoodViewController.swift
//  SuchiApp
//
//  Created by Андрей Мельник on 17.03.2022.
//

import UIKit

protocol FoodViewControllerDelegate {
    func toggleMenu()
}

class FoodViewController: UIViewController {
    
    @IBOutlet weak var deliveryLabel: UILabel!
    let galleryCollectionView = GalleryCollectionView()
    var delegate: FoodViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(galleryCollectionView)
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        galleryCollectionView.set(cells: SushiModel.fetchSushi())
    }

    @IBAction func menuButton(_ sender: UIButton) {
        delegate?.toggleMenu()
    }
    
}

