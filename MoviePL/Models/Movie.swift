//
//  Movie.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 15/12/2022.
//

import Foundation

struct TrendingMoviesResponse {
    let result: [Movie]
}

struct Movie {
    let id: Int
    let media_type: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let release_date: String?
    let vote_average: Double
    let vote_count: Int
}
