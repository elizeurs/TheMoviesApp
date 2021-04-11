//
//  Review.swift
//  TheMovies
//
//  Created by Elizeu RS on 11/04/21.
//

import Foundation

struct ReviewResponse: Codable {
  var results: [Review]
}

struct Review: Codable, Identifiable {
  var id: String?
  var author: String?
  var content: String?
}
