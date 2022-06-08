//
//  Aircraft.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct Aircraft: View {
    let color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            let nearLine = size * 0.05
            let shortIntermediateLine = nearLine / 2
            let longIntermediateLine = size * 0.1
            let middle = size / 2
            
            Path { path in
                //tail
                path.move(to: CGPoint(x: longIntermediateLine, y: middle))
                path.addLine(to: CGPoint(x: nearLine, y: middle - longIntermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine, y: middle - longIntermediateLine))
                
                path.addLine(to: CGPoint(x: nearLine * 3, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: middle - shortIntermediateLine * 3))
                
                //wing
                path.addLine(to: CGPoint(x: middle - longIntermediateLine, y: longIntermediateLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: longIntermediateLine))
                path.addLine(to: CGPoint(x: middle + longIntermediateLine, y: middle - shortIntermediateLine * 3))
                path.addLine(to: CGPoint(x: size - middle / 2, y: middle - shortIntermediateLine * 3))
                
                //nose
                path.addQuadCurve(
                    to: CGPoint(x: size - middle / 2, y: middle + shortIntermediateLine * 3),
                    control: CGPoint(x: size, y: middle)
                )
                
                //wing
                path.addLine(to: CGPoint(x: middle + longIntermediateLine, y: middle + shortIntermediateLine * 3))
                path.addLine(to: CGPoint(x: middle - nearLine, y: size - longIntermediateLine))
                path.addLine(to: CGPoint(x: middle - longIntermediateLine, y: size - longIntermediateLine))
                
                //tail
                path.addLine(to: CGPoint(x: middle - nearLine, y: middle + shortIntermediateLine * 3))
                path.addLine(to: CGPoint(x: nearLine * 3, y: middle + nearLine))
                
                path.addLine(to: CGPoint(x: longIntermediateLine, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: nearLine, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine, y: middle))
            }
            .fill(color)
        }
    }
}

struct Aircraft_Previews: PreviewProvider {
    static var previews: some View {
        Aircraft(color: Color(red: 81/255, green: 155/255, blue: 200/255))
            .frame(width: 200, height: 200)
    }
}
