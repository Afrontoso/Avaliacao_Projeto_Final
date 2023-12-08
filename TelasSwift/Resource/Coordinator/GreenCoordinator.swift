//
//  GreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class GreenCoordinator: Coordinator {
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = GreenViewController()
        
        viewController.onRedTap = {
            self.goToRedTap()
        }
        
        viewController.onBlueTap = {
            self.goToBlueTap()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func goToRedTap() {
        let coordinator = RedCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    private func goToBlueTap() {
        navigationController.popViewController(animated: true)
    }
}
