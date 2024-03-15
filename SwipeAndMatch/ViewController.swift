//
//  ViewController.swift
//  SwipeAndMatch
//
//  Created by olivier geiger on 15/03/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        let subviews = [UIColor.gray, UIColor.darkGray, UIColor.black].map { color -> UIView  in
            let v = UIView()
            v.backgroundColor = color
            return v
        }
        
        let topStackView = UIStackView(arrangedSubviews: subviews)
        topStackView.distribution = .fillEqually
        
        let blueView = UIView()
        let yellowView = UIView()
        
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        yellowView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        blueView.backgroundColor = .systemBlue
        yellowView.backgroundColor = .systemYellow
        
        let stackView = UIStackView(arrangedSubviews: [topStackView, blueView, yellowView])
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        stackView.fillSuperview()
    }
}

