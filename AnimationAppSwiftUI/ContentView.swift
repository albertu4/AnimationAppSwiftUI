//
//  ContentView.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Cloud()
                .frame(width: 50, height: 50)
            HStack {
                Cloud()
                    .frame(width: 80, height: 80)
                Spacer()
                Aircraft()
            .frame(width: 100, height: 100)
                Spacer()
            }
            HStack {
                Spacer()
                Cloud()
                .frame(width: 40, height: 40)
            }
            Spacer()
            City()
                .frame(width: 360, height: 360)
        }
//        .background(Color(red: 226/255, green: 176/255, blue: 184/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
