//
//  City.swift
//  AnimationAppSwiftUI
//
//  Created by Михаил Иванов on 08.06.2022.
//

import SwiftUI

struct City: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            let nearLine = size * 0.025
            let intermediateLine = nearLine * 2
            let longIntermediateLine = size / 4
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: size))
                path.addLine(to: CGPoint(x: nearLine, y: size))
                path.addLine(to: CGPoint(x: nearLine, y: middle))
                path.addLine(to: CGPoint(x: intermediateLine, y: middle))
                path.addLine(to: CGPoint(x: intermediateLine, y: middle - intermediateLine))
                path.addLine(to: CGPoint(x: intermediateLine + nearLine, y: middle - intermediateLine))
                path.addLine(to: CGPoint(x: intermediateLine + nearLine, y: middle - intermediateLine * 2))
                path.addLine(to: CGPoint(x: intermediateLine * 2, y: middle - intermediateLine * 2))
                path.addLine(to: CGPoint(x: intermediateLine * 2, y: middle))
                path.addLine(to: CGPoint(x: intermediateLine * 2 + nearLine, y: middle))
                path.addLine(to: CGPoint(x: intermediateLine * 2 + nearLine, y: middle + longIntermediateLine))
                
                path.addLine(to: CGPoint(x: intermediateLine * 3, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: intermediateLine * 3, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: intermediateLine * 4, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: intermediateLine * 4, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine - nearLine, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine - nearLine, y: size - intermediateLine))
                
                path.addLine(to: CGPoint(x: longIntermediateLine, y: size - intermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine, y: size - intermediateLine * 4))
                path.addLine(to: CGPoint(x: longIntermediateLine + intermediateLine, y: size - intermediateLine * 4))
                path.addLine(to: CGPoint(x: longIntermediateLine + intermediateLine, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine + nearLine * 3, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: longIntermediateLine + nearLine * 3, y: size - intermediateLine * 2))
                
                path.addLine(to: CGPoint(x: longIntermediateLine + intermediateLine * 2, y: size - intermediateLine * 2))
                path.addLine(to: CGPoint(x: longIntermediateLine + intermediateLine * 2, y: middle))
                path.addLine(to: CGPoint(x: longIntermediateLine + nearLine * 5, y: middle))
                path.addLine(to: CGPoint(x: longIntermediateLine + nearLine * 5, y: middle - intermediateLine))
                path.addLine(to: CGPoint(x: middle - intermediateLine * 2, y: middle - intermediateLine))
                path.addLine(to: CGPoint(x: middle - intermediateLine * 2, y: middle))
                path.addLine(to: CGPoint(x: middle - nearLine * 3, y: middle))
                path.addLine(to: CGPoint(x: middle - nearLine * 3, y: size - intermediateLine * 3))
                
                path.addLine(to: CGPoint(x: middle - intermediateLine, y: size - intermediateLine * 3))
                path.addLine(to: CGPoint(x: middle - intermediateLine, y: middle - intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle - nearLine, y: middle - intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle - nearLine, y: longIntermediateLine + intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle, y: longIntermediateLine + intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + nearLine, y: intermediateLine * 3))
                path.addLine(to: CGPoint(x: middle + intermediateLine, y: longIntermediateLine + intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + nearLine * 3, y: longIntermediateLine + intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + nearLine * 3, y: middle - intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + intermediateLine * 2, y: middle - intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + intermediateLine * 2, y: middle + longIntermediateLine))
                
                path.addLine(to: CGPoint(x: middle + nearLine * 5, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: middle + nearLine * 5, y: middle + intermediateLine * 4))
                path.addLine(to: CGPoint(x: middle + intermediateLine * 3, y: middle + intermediateLine * 4))
                path.addLine(to: CGPoint(x: middle + nearLine * 7, y: middle + intermediateLine * 4))
                path.addLine(to: CGPoint(x: middle + nearLine * 7, y: middle + intermediateLine * 3))
                path.addLine(to: CGPoint(x: middle + intermediateLine * 4, y: middle + intermediateLine * 3))
                path.addLine(to: CGPoint(x: middle + intermediateLine * 4, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + nearLine * 9, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: middle + longIntermediateLine, y: middle - intermediateLine))
                path.addLine(to: CGPoint(x: size - nearLine * 9, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: size - nearLine * 9, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: size - intermediateLine * 4, y: middle + intermediateLine * 2))
                path.addLine(to: CGPoint(x: size - intermediateLine * 4, y: middle + intermediateLine * 3))
                path.addLine(to: CGPoint(x: size - intermediateLine * 4, y: middle + intermediateLine * 3))
                path.addLine(to: CGPoint(x: size - nearLine * 7, y: middle + intermediateLine * 3))
                path.addLine(to: CGPoint(x: size - nearLine * 7, y: longIntermediateLine))
                path.addLine(to: CGPoint(x: size - nearLine * 3, y: longIntermediateLine))
                path.addLine(to: CGPoint(x: size - nearLine * 3, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: size - nearLine, y: middle + longIntermediateLine))
                path.addLine(to: CGPoint(x: size - nearLine, y: size))
                path.addLine(to: CGPoint(x: size, y: size))
                
            }
            .stroke(lineWidth: 5)
            
        }
        
    }
}

struct City_Previews: PreviewProvider {
    static var previews: some View {
        City()
            .frame(width: 200, height: 200)
    }
}
