//
//  AnimationToggle.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct AnimationToggle: View {
    @Binding var animation: Bool
    
    var body: some View {
        Toggle("Show animation", isOn: $animation)
            .toggleStyle(.button)
    }
}

struct AnimationToolbar_Previews: PreviewProvider {
    static var previews: some View {
        AnimationToggle(animation: .constant(true))
    }
}
