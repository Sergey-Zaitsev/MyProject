//
//  RangeViewNewGeo.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct RangeViewNewGeo: View {
    @EnvironmentObject var userData: UserData
    var chart: LinesSet
    var index: Int {
             userData.chartIndex(chart: chart)
         }
    
    func rangeTimeFor(indexChat: Int) -> Range<Int> {
              let numberPoints = userData.charts[indexChat].xTime.count
           let rangeTime: Range<Int>  = Int(userData.charts[indexChat].range.lowerBound * CGFloat(numberPoints - 1))..<Int(userData.charts[indexChat].range.upperBound * CGFloat(numberPoints - 1))
              return rangeTime
          }
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 10){
        //--------
            ZStack {
                YTickerView(chart: self.userData.charts[self.index],rangeTime: self.rangeTimeFor (indexChat: self.index),colorYAxis: Color("ColorTitle"), colorYMark: Color.primary)
                 GraphsForChart(chart: self.userData.charts[self.index], rangeTime: self.rangeTimeFor (indexChat: self.index), lineWidth : 2)
                IndicatorView(color: Color.secondary, chart: self.userData.charts[self.index],  rangeTime: self.rangeTimeFor (indexChat: self.index))
            } //ZStack
                TickerView(rangeTime: self.rangeTimeFor (indexChat: self.index),chart: self.userData.charts[self.index], colorXAxis: Color.red, colorXMark: Color.blue, indent: 10)
            .frame(height: geometry.size.height  * 0.06)
        //--------
            RangeViewNew(bounds: Bounds(), widthRange: geometry.size.width, height: 100, chart: chartsData[0] )
            CheckMarksView(chart: self.userData.charts[self.index])
                .frame(height: geometry.size.height  * 0.05)
          
            Text("\(/*bounds*/self.userData.charts[0].range.upperBound)")
            Text("\(/*bounds*/self.userData.charts[0].range.lowerBound )")
         } // VStack
      } //Geometry
    } // bpsy
}

struct RangeViewNewGeo_Previews: PreviewProvider {
    static var previews: some View {
        RangeViewNewGeo(chart: chartsData[0])
         .environmentObject(UserData())
    }
}
