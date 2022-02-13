//
//  MatchesViewController.swift
//  Tinderbar
//
//  Created by Merrick Sapsford on 22/10/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet private weak var cardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardView.backgroundColor = MainColors.unselectedGray
        cardView.layer.cornerRadius = 16.0
    }
}

@IBDesignable class HomeActionButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = MainColors.unselectedGray
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = bounds.size.width / 2.0
    }
}
