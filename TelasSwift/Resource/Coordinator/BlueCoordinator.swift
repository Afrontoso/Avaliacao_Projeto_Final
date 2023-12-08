//
//  BlueCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-12 on 08/12/23.
//

import Foundation
import UIKit

class BlueCoordinator: Coordinator {

    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
        }

      func start() {
        let viewController = BlueViewController()
          
          viewController.onGreenTap = {
              self.goToGreenTap()
          }
          
            self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func goToGreenTap() {
        let coordinator = GreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
