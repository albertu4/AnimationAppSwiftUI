//
//  AircraftAnimation.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct AircraftAnimation: View {
    let animation: Bool
    
    var body: some View {
        VStack {
            Aircraft(color: Color(red: 81/255, green: 155/255, blue: 200/255))
                .offset(x: animation ? +UIScreen.main.bounds.width : -UIScreen.main.bounds.width)
                .animation(
                    .spring()
                        .speed(0.1)
                        .delay(0.8)
                        .repeatCount(0, autoreverses: false),
                    value: animation
                )
            
            Spacer(minLength: 50)
            
            Aircraft(color: Color(red: 81/255, green: 169/255, blue: 124/255))
                .offset(x: animation ? +UIScreen.main.bounds.width : -UIScreen.main.bounds.width)
                .animation(
                    .spring()
                        .speed(0.07)
                        .delay(1.2)
                        .repeatCount(0, autoreverses: false),
                    value: animation
                )
                .rotationEffect(.degrees(180))
        }
    }
}

struct AircraftAnimation_Previews: PreviewProvider {
    static var previews: some View {
        AircraftAnimation(animation: true)
    }
}
