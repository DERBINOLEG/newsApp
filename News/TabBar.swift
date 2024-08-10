//
//  TabBar.swift
//  News
//
//  Created by Олег Дербин on 07.08.2024.
//

import UIKit

final class TapBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.tintColor = .blue
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        
        viewControllers = [
            setupNavigationController(rootViewController: GeneralViewController(),
                                      title: "General".localized,
                                      image: UIImage(systemName: "newspaper") ?? UIImage()),
            setupNavigationController(rootViewController: TechnologyViewController(),
                                      title: "Technology".localized,
                                      image: UIImage(systemName: "gyroscope".localized) ?? 
                                      UIImage()),
            setupNavigationController(rootViewController: BuisnessViewController(),
                                      title: "Buisness".localized,
                                      image: UIImage(systemName: "briefcase") ??
                                      UIImage())
        ]
    }
    
    private func setupNavigationController(rootViewController: UIViewController,
                                           title: String,
                                           image: UIImage) -> UIViewController {
        
        let navigationController = UINavigationController(rootViewController:
                                                            rootViewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        rootViewController.title = title
        navigationController.navigationBar.prefersLargeTitles = true
        
        return navigationController
    }
    
}
