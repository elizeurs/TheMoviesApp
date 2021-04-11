//
//  HomeTabView.swift
//  TheMovies
//
//  Created by Elizeu RS on 10/04/21.
//

import SwiftUI

struct HomeTabView: View {
  
  enum Tab: Int {
    case movie
    case discover
  }
  
  @State private var selectedTab = Tab.movie
  
  var body: some View {
    TabView(selection: $selectedTab) {
//      Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
      MoviesView().tabItem {
        tabBarItem(text: "Movies", image: "film")
      }.tag(Tab.movie)
      DiscoverView().tabItem {
        tabBarItem(text: "Discover", image: "square.stack")
      }.tag(Tab.discover)
    }
  }
  
  private func tabBarItem(text: String, image: String) -> some View {
    VStack {
      Image(systemName: image)
        .imageScale(.large)
      
      Text(text)
    }
  }
}

struct HomeTabView_Previews: PreviewProvider {
  static var previews: some View {
    HomeTabView()
  }
}
