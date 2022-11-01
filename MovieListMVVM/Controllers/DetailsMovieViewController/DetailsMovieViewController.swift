//
//  DetailsMovieViewController.swift
//  MovieListMVVM
//
//  Created by Utku Çetinkaya on 1.11.2022.
//

import UIKit
import SDWebImage

class DetailsMovieViewController: UIViewController {
        
    // MARK: - IBOutlets
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - ViewModel
    var viewModel: DetailsMovieViewModel
    
    //MARK: - Lyfe Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configView() {
        self.title = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        movieImageView.sd_setImage(with: viewModel.movieImage)
        descriptionLabel.text = viewModel.movieDescription
    }
}


