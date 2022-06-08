//
//  SkyAnimation.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct SkyAnimation: View {
    let animation: Bool
    
    var body: some View {
        ZStack {
            SkyView()
                .offset(y: animation ? 0 : -UIScreen.main.bounds.height)
                .animation(.spring(), value: animation)
        }
    }
}

struct SkyAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SkyAnimation(animation: true)
            .background(Color.blue)
    }
}
