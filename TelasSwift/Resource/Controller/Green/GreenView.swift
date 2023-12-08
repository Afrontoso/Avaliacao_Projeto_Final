//
//  GreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class GreenView: ViewDefault {
    
    //MARK: - Clouseres
    var onRedTap: (() -> Void)?
    var onBlueTap: (() -> Void)?
    
    //MARK: - Inits

    
    //MARK: - Propeties
    
    var  redButton = ButtonDefault(title: "Ir para a Tela Vermelha", color: "redButton")
    var  blueButton = ButtonDefault(title: "Voltar para a Tela Azul", color: "blueButton")

    override func setupVisualElements() {
        
        super.setupVisualElements()

        self.addSubview(redButton)
        self.addSubview(blueButton)

        redButton.addTarget(self, action: #selector(redTap), for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            redButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -250),
            redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            redButton.heightAnchor.constraint(equalToConstant: 70),
            
            blueButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -150),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            blueButton.heightAnchor.constraint(equalToConstant: 70),
        
        ])
    }
    
    
    @objc private func redTap(){
        onRedTap?()
    }
    @objc private func blueTap(){
        onBlueTap?()
    }
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "greenTela")
    }

    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    
    

    
}

