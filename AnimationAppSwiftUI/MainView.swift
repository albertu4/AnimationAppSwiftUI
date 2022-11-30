//
//  MainView.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct MainView: View {
    @State private var show = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                ZStack {
                    SkyAnimation(animation: show)
                    AircraftAnimation(animation: show)
                        .frame(width: 80, height: 150)
                }
                
                Spacer()
                CityAnimation(animation: show)
            }
            .ignoresSafeArea()
            .animation(.easeIn, value: show)
            .toolbar { AnimationToggle(animation: $show) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
