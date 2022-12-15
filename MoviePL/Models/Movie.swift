//
//  Movie.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 15/12/2022.
//

import Foundation

// MARK: - Welcome
struct TrendingMoviesResponse: Codable {
    let results: [Result]

    enum CodingKeys: String, CodingKey {
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    let id: Int
    let mediaType: MediaType
    let originalTitle: String?
    let overview, posterPath: String
    let releaseDate: String?
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case mediaType = "media_type"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}




/*
 
 {
adult = 0;
"backdrop_path" = "/198vrF8k7mfQ4FjDJsBmdQcaiyq.jpg";
"genre_ids" =             (
 878,
 28,
 12
);
id = 76600;
"media_type" = movie;
"original_language" = en;
"original_title" = "Avatar: The Way of Water";
overview = "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.";
popularity = "1712.743";
"poster_path" = "/94xxm5701CzOdJdUEdIuwqZaowx.jpg";
"release_date" = "2022-12-14";
title = "Avatar: The Way of Water";
video = 0;
"vote_average" = "8.295";
"vote_count" = 149;
}
 
 */
