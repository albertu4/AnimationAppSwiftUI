//
//  Sun.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct Sun: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            Path { path in
                path.addEllipse(in: CGRect(x: 0, y: 0, width: size, height: size))
            }
            .fill(Color.orange)
        }
    }
}

struct Sun_Previews: PreviewProvider {
    static var previews: some View {
        Sun()
            .frame(width: 200, height: 200)
    }
}
