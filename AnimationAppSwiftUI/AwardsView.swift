//
//  AwardsView.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 10.06.2022.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Sun()
                Cloud(color: .blue)
                Aircraft(color: .red)
                City(color: .black)
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
