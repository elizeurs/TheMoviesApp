//
//  MovieURL.swift
//  TheMovies
//
//  Created by Elizeu RS on 11/04/21.
//

import Foundation

enum MovieURL: String {
  case nowPlaying = "now_playing"
  case upcoming = "upcoming"
  case popular = "popular"
  
  public var urlString: String {
    "\(MovieDownloadManager.baseURL)\(self.rawValue)?api_key=\(API.key)&language=en-US&page=1"
  }
}
