//
//  RedView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class RedView: ViewDefault {
    
    //MARK: - Clouseres
    var onBlueTap: (() -> Void)?
    var onGreenTap: (() -> Void)?
    
    //MARK: - Inits

    //MARK: - Propeties
    
    var  blueButton = ButtonDefault(title: "Ir para a Tela Azul", color: "blueButton")
    var  greenButton = ButtonDefault(title: "Voltar para a Tela Verde", color: "greenButton")

    override func setupVisualElements() {
        
        super.setupVisualElements()

        self.addSubview(blueButton)
        self.addSubview(greenButton)

        blueButton.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
        greenButton.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            blueButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -250),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            blueButton.heightAnchor.constraint(equalToConstant: 70),
            
            greenButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -150),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            greenButton.heightAnchor.constraint(equalToConstant: 70),
        
        ])
    }
    
    
    @objc private func blueTap(){
        onBlueTap?()
    }
    @objc private func greenTap(){
        onGreenTap?()
    }
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "redTela")
    }

    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    
    

    
}
