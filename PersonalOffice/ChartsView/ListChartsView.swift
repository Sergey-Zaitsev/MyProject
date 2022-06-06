//
//  ListChartsView.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct ListChartsView: View {
    // List
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
        GeometryReader{ geometry in
           List (0..<self.userData.charts.count, id:\.self){ indexChat in
               ChartView(chart: self.userData.charts[indexChat])
                    .frame(height: geometry.size.height)
            }// List
            .navigationBarTitle(Text("Данные счетчика "))
        } //Geometry
        }
    }
}

struct ListChartsView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListChartsView()
        .environmentObject(UserData())
        .colorScheme(.dark)
        
    }
}
