//
//  YAxisView.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct YAxisView : View {
    var color: Color
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Path { path in
                    path.move(to: CGPoint(x: 10, y: 0))
                    path.addLine(to: CGPoint(x:10 , y: geometry.size.height))
                    }
                    .stroke(self.color, lineWidth: 2)
            }
        }
    }
}

struct YAxisView_Previews : PreviewProvider {
    static var previews: some View {
        YAxisView(color: Color.red)
            .frame(height: 100)
    }
}
