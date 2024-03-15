//
//  ViewController.swift
//  SwipeAndMatch
//
//  Created by olivier geiger on 15/03/2024.
//

import UIKit

class ViewController: UIViewController {

    let topStackView = TopNavigationSV()
    let blueView = UIView()
    let buttonsStackView = HomeBottomControlsSV()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.backgroundColor = .blue
        setupLayout()
    }

    
    // MARK:- Fileprivate
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }

}

