//
//  TabBarVC.swift
//  testRay
//
//  Created by Сергей Сырбу on 01.07.2024.
//

import UIKit

final class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        generateTabBar()
    }
    
    private func generateTabBar() {
        tabBar.unselectedItemTintColor = .white
        viewControllers = [
            generateTabBarWithItem(viewController: UINavigationController(rootViewController: SearchVC()), tabBatItem: TabBarItem.searchItem),
            generateTabBarWithItem(viewController: UINavigationController(rootViewController: FavoriteVC()), tabBatItem: TabBarItem.favoriteItem)]
    }
    
   private func generateTabBarWithItem(viewController: UINavigationController, tabBatItem: TabBarItem.Asset) -> UIViewController {
       viewController.tabBarItem.title = tabBatItem.text
       viewController.tabBarItem.image = tabBatItem.image
       return viewController
    }

}

private enum TabBarItem {
    struct Asset {
        let image: UIImage?
        let text: String
    }
    
    static let searchItem = Asset(image: UIImage(systemName: "magnifyingglass.circle"), text: "Поиск")
    static let favoriteItem = Asset(image: UIImage(systemName: "heart.fill"), text: "Избранное")

}
