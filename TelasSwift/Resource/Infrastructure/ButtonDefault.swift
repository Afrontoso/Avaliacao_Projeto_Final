//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton{
    
    init(title: String, color: String){
        super.init(frame: .zero)
        initButtonDefault(title: title, color: color)
    }
    
    private func initButtonDefault (title: String, color: String){
        self.backgroundColor = UIColor(named: color)
        self.setTitle(title, for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 12
        self.translatesAutoresizingMaskIntoConstraints = false

    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented ")
    }
    
}
