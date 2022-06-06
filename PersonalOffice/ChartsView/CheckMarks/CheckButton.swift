//
//  CheckButton.swift
//  PersonalOffice
//
//  Created by Сергей Зайцев on 16.05.2022.
//

import SwiftUI

struct CheckButton: View {
    @Binding var line: Line
    
    var body: some View {
      Button (action: { self.line.isHidden.toggle()}) {
          CheckBoxView(line: $line)
        } // Button
    } // body
}

struct CheckButton_Previews: PreviewProvider {
    static var previews: some View {
       var linen = chartsData[0].lines[0]
        linen.isHidden = false
        return CheckButton(line:.constant(linen))
    }
}
