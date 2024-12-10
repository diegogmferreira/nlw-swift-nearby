//
//  WelcomeViewController.swift
//  nlw-nearby
//
//  Created by Diego Galvão on 10/12/24.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    let contentView: WelcomeView
    
    init(contentView: WelcomeView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        view.backgroundColor = Colors.gray100
        
        setupContraints()
    }
    
    private func setupContraints() {
//        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.setupContentViewToViewController(contentView: contentView)
    }
}
