//
//  YoutubeSearchResponse.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 01/01/2023.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
