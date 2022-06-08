//
//  Cloud.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct Cloud: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            let nearLine = size * 0.05
            let middle = size / 2
            let farLine = middle + middle / 2
            
            Path { path in
                
                path.addArc(
                    center: CGPoint(x: middle / 2, y: middle),
                    radius: nearLine * 4,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false)
                
                path.addArc(
                    center: CGPoint(x: middle, y: nearLine * 7),
                    radius: nearLine * 5,
                    startAngle: .degrees(180),
                    endAngle: .degrees(360),
                    clockwise: false)
                
                path.addArc(
                    center: CGPoint(x: farLine, y: middle),
                    radius: nearLine * 3,
                    startAngle: .degrees(270),
                    endAngle: .degrees(360),
                    clockwise: false)
                
                path.addLine(to: CGPoint(x: nearLine, y: middle))
            }
            .stroke(Color.blue, lineWidth: 2)
            
        }
    }
}

struct Cloud_Previews: PreviewProvider {
    static var previews: some View {
        Cloud()
            .frame(width: 200, height: 200)
    }
}
