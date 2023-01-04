//
//  DataPersistenceManager.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 04/01/2023.
//

import Foundation
import UIKit
import CoreData

class DataPersistenceManager {
    static let shared = DataPersistenceManager()
    
    func downloadTitleWith(model: Title, completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let item = TitleItem(context: context)
        
        item.overview = model.overview
        item.id = Int64(model.id)
        item.media_type = model.mediaType
        item.original_title = model.originalTitle
        item.poster_path = model.posterPath
        item.release_date = model.releaseDate
        item.vote_average = model.voteAverage
        item.vote_count = Int64(model.voteCount)
    }
}
