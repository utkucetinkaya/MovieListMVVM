//
//  MovieTableCellViewModel.swift
//  MovieListMVVM
//
//  Created by Utku Çetinkaya on 31.10.2022.
//

import Foundation

class MovieTableCellViewModel {

    var id: Int
    var name: String
    var date: String
    var rating: String
    var image: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.name = movie.name ?? movie.title ?? ""
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.rating = "\(movie.voteAverage)/10"
        self.image = makeImageURL(movie.posterPath ?? "")
        
    }
    private func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
}
