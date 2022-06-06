//
//  XAxisView.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct XAxisView : View {
    var color: Color
    var body: some View {
        VStack {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x:geometry.size.width , y: 0))
                }
                .stroke(self.color, lineWidth: 2)
        }
        }
    }
}

struct XAxisView_Previews : PreviewProvider {
    static var previews: some View {
        XAxisView(color: Color.red)
            .frame(height: 30)
    }
}
