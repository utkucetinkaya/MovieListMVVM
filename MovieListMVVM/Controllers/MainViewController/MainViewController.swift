//
//  MainViewController.swift
//  MovieListMVVM
//
//  Created by Utku Çetinkaya on 31.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel : MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }

    func configView(){
        
        self.title = "Movies"
        self.view.backgroundColor = .clear
        
        setupTableView()
    }
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }
}
