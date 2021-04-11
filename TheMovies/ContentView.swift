//
//  ContentView.swift
//  TheMovies
//
//  Created by Elizeu RS on 10/04/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showSettings = false
  
  var body: some View {
    //        Text("Hello, world!")
    //            .padding()
    NavigationView {
      Group {
        HomeTabView()
      }.navigationBarTitle("Movies", displayMode: .automatic)
      .navigationBarItems(trailing: HStack{
//        Text("Settings")
        settingsButton
      })
      .sheet(isPresented: $showSettings, content: {
//        Text("Settings View")
        SettingsView(isPresented: $showSettings)
      })
    }
  }
  
  private var settingsButton: some View {
    Button(action: {
      showSettings.toggle()
    }, label: {
      HStack {
        Image(systemName: "gear")
          .imageScale(.large)
          .foregroundColor(.gray)
      }.frame(width: 30, height: 30)
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
