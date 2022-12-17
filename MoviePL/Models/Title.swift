//
//  Title.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 15/12/2022.
//

import Foundation

// MARK: - TrendingMoviesResponse
struct TrendingTitleResponse: Codable {
    let results: [Title]
}

// MARK: - Movie
struct Title: Codable {
    let id: Int
    let mediaType: String?
    let originalTitle: String?
    let overview, posterPath: String?
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
