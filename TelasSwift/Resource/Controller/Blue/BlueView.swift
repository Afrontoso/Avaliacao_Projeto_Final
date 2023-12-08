//
//  BlueView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class BlueView: ViewDefault{
    
    //MARK: - Clouseres
    var onGreenTap: (() -> Void)?
    
    //MARK: - Inits

    
    //MARK: - Propeties
    
    var  greenButton = ButtonDefault(title: "Ir para a Tela Verde", color: "greenButton")

    override func setupVisualElements() {
        
        super.setupVisualElements()

        self.addSubview(greenButton)

        greenButton.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            greenButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -150),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            greenButton.heightAnchor.constraint(equalToConstant: 70),
        
        ])
    }
    
    @objc private func greenTap() {
        onGreenTap?()
    }
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "blueTela")
    }

    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    
}
