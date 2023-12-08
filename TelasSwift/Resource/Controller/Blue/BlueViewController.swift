//
//  BlueViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class BlueViewController: UIViewController {
    //MARK: - Closeres
    var onGreenTap: (() -> Void)?
    
    lazy var blueView: BlueView = {
        let view = BlueView()
        
        
        view.onGreenTap = {
            self.onGreenTap?()
        }
        
        return view
    }()
    
    override func loadView(){
        self.view = blueView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // oculta o botão de voltar
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
