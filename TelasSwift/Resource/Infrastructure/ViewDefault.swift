//
//  ViewDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class ViewDefault: UIView {
    
    //MARK: - Inits
    
    override init(frame: CGRect) {

        super.init(frame: frame)
       
        setupVisualElements()
    }
    
    func setupVisualElements() {
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
