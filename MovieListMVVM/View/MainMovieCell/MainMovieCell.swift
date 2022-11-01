//
//  MainMovieCell.swift
//  MovieListMVVM
//
//  Created by Utku Çetinkaya on 31.10.2022.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {
    
    static var identifier: String {
        get {
            "cell"
        }
    }
    
    static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }
    //MARK: - IBOutlets
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    backView.addBorder(color: .label, width: 1)
    backView.round(5)
        
        movieImageView.round(15)
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
        self.nameLabel.text = viewModel.name
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.rating
        self.movieImageView.sd_setImage(with: viewModel.image)
    }
}
