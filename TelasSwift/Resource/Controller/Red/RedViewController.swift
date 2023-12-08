//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class RedViewController: UIViewController {
    
    //MARK: - Clouseres
    var onBlueTap: (() -> Void)?
    var onGreenTap: (() -> Void)?
    
    lazy var redView: RedView = {
        let redView = RedView()
        
        redView.onBlueTap = {
            self.onBlueTap?()
        }
        
        redView.onGreenTap = {
            self.onGreenTap?()
        }
        
        return redView
    }()
    
    override func loadView() {
        self.view = redView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
