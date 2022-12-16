//
//  Extensions.swift
//  MoviePL
//
//  Created by Ildar Garifullin on 16/12/2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
