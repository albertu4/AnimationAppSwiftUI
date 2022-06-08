//
//  CityAnimation.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct CityAnimation: View {
    let animation: Bool
    
    var body: some View {
        ZStack {
            City()
                .offset(y: animation ? 0 : +UIScreen.main.bounds.height)
                .animation(.spring().delay(0.6), value: animation)
        }
    }
}

struct CityAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CityAnimation(animation: true)
    }
}
