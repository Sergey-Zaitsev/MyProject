//
//  UserData.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

final class UserData: ObservableObject{
    @Published var charts = chartsData

    func chartIndex(chart: LinesSet ) -> Int {
           return charts.firstIndex(where: { $0.id == chart.id })!
       }
}
