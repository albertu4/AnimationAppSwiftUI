//
//  StarterView.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 10.06.2022.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                        .foregroundColor(.red)
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
