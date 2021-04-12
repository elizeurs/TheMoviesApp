//
//  EnvironmentValues+ImageCache.swift
//  TheMovies
//
//  Created by Elizeu RS on 11/04/21.
//

import SwiftUI

struct ImageCacheKey: EnvironmentKey {
  static let defaultValue: ImageCache = TempImageCache()
}

extension EnvironmentValues {
  var imageCache: ImageCache {
    get { self[ImageCacheKey.self] }
    set { self[ImageCacheKey.self] = newValue }
  }
}
