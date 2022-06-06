//
//  ContentView.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct ContentView : View {
    @EnvironmentObject var userData: UserData
    @State var selected: Int = 1
    var body: some View {
        TabView (selection: $selected) {
         ListChartsView ()
            .environmentObject(UserData())
            .tabItem {
                Image(systemName:"rectangle.grid.1x2")
                .font(Font.title.weight(.bold))
                Text("Данные")
            }
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .edgesIgnoringSafeArea(.top)
            .environmentObject(UserData())
            .colorScheme(.dark)
    }
}
