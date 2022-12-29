//
//  DownloadsViewController.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 10/12/2022.
//

import UIKit

class DownloadsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Downloads"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .systemBackground
    }
}
