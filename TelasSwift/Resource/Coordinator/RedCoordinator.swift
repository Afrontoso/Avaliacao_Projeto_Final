//
//  RedCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class RedCoordinator: Coordinator {
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RedViewController()
        
        viewController.onBlueTap = {
            self.goToBlueTap()
        }
        
        viewController.onGreenTap = {
            self.onGreenTap()
        }
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func goToBlueTap() {
        let coordinator = BlueCoordinator(navigationController: navigationController)
        coordinator.start()
//        navigationController.popToRootViewController(animated: true)
    }
    
    //popToRoot - volta raiz
    
    private func onGreenTap() {
        navigationController.popViewController(animated: true)
    }
}
