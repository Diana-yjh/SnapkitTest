//
//  ViewController.swift
//  SnapkitTest
//
//  Created by Yejin Hong on 2022/02/15.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collection)
        collection.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
//        collection.dataSource = self
//        collection.delegate = self
        collection.backgroundColor = .blue
        
        return collection
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
    }
}
//
//extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UiCollectionView, )
//}
