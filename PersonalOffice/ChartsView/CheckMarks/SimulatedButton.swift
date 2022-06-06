//
//  SimulatedButton.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct SimulatedButton: View {
@Binding var line: Line
    var body: some View {
            CheckBoxView(line: $line)
            .onTapGesture (count:1){self.line.isHidden.toggle()}
    } // body
}

struct SimulatedButton_Previews: PreviewProvider {
    static var previews: some View {
        var linen = chartsData[0].lines[0]
        linen.isHidden = false
        return NavigationView {
          SimulatedButton(line: .constant(linen))
        }
        .colorScheme(.dark)
    }
}
