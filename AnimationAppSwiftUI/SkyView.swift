//
//  SkyView.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct SkyView: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            Cloud(color: .blue)
                .frame(width: 50, height: 50)
            
            HStack {
                Cloud(color: .blue)
                    .frame(width: 80, height: 80)
                Spacer()
                Sun()
                    .frame(width: 100, height: 100)
            }
            
            HStack {
                Spacer()
                Cloud(color: .blue)
                .frame(width: 100, height: 100)
            }
            
            Spacer()
        }
    }
}
    
    struct SkyView_Previews: PreviewProvider {
        static var previews: some View {
            SkyView()
        }
    }
