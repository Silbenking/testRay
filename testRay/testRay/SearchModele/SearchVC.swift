//
//  ViewController.swift
//  testRay
//
//  Created by Сергей Сырбу on 01.07.2024.
//

import UIKit

class SearchVC: UIViewController {
    
    private let searchView = SearchView()
    
    override func loadView() {
        self.view = searchView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
    }


}

