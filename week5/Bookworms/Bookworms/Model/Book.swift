//
//  Book.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import Foundation
import SwiftData


@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    var dateBook: String
    
    init(title: String, author: String, genre: String, review: String, rating: Int, dateBook: String) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
        self.dateBook = dateBook
    }
}


