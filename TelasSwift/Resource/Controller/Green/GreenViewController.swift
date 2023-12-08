//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class GreenViewController: UIViewController {
    
    //MARK: - Clouseres
    var onBlueTap: (() -> Void)?
    var onRedTap: (() -> Void)?
    
    lazy var greenView: GreenView = {
        let greenView = GreenView()
        
        greenView.onRedTap = {
            self.onRedTap?()
        }
        
        greenView.onBlueTap = {
            self.onBlueTap?()
        }
        
        return greenView
    }()
    
    override func loadView() {
        self.view = greenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
