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
                HStack {
                    Sun()
                    Cloud(color: .blue)
                }
                HStack {
                    Aircraft(color: .green)
                    City(color: .black)
                }
            }
            .padding()
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
