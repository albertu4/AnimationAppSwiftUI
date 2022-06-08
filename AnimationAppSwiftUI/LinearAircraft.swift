////
////  LinearAircraft.swift
////  AnimationAppSwiftUI
////
////  Created by Михаил Иванов on 08.06.2022.
////
//
//import SwiftUI
//
//struct LinearAircraft: View {
//    var body: some View {
//        GeometryReader { geometry in
//            let width = geometry.size.width
//            let height = geometry.size.height
//            let size = min(width, height)
//            
//            let nearLine = size * 0.1
//            let farLine = size
//            let middle = size / 2
//
//            Path { path in
//                //tail
//                path.move(to: CGPoint(x: nearLine, y: middle))
//                path.addQuadCurve(
//                    to: CGPoint(x: nearLine * 2, y: middle - nearLine/2),
//                    control: CGPoint(x: nearLine, y: nearLine * 2)
//                )
//                path.addLine(to: CGPoint(x: middle, y: middle - nearLine))
//
//                //wing
//                path.addQuadCurve(
//                    to: CGPoint(x: middle + nearLine * 2, y: middle - nearLine),
//                    control: CGPoint(x: middle, y: -nearLine)
//                )
//
//                //nose
//                path.addQuadCurve(
//                    to: CGPoint(x: middle + nearLine * 2, y: middle + nearLine),
//                    control: CGPoint(x: farLine + nearLine, y: middle)
//                )
//
//                //wing
//                path.addQuadCurve(
//                    to: CGPoint(x: middle, y: middle + nearLine),
//                    control: CGPoint(x: middle, y: farLine + nearLine)
//                )
//
//                //tail
//                path.addLine(to: CGPoint(x: nearLine * 2, y: middle + nearLine/2))
//                path.addQuadCurve(
//                    to: CGPoint(x: nearLine, y: middle),
//                    control: CGPoint(x: nearLine, y: farLine - nearLine * 2)
//                )
//            }
////            .fill(Color(red: 81/255, green: 155/255, blue: 200/255))
//            .stroke(Color.bl)
//        }
//    }
//}
//
//
//struct LinearAircraft_Previews: PreviewProvider {
//    static var previews: some View {
//        LinearAircraft()
//            .frame(width: 200, height: 200)
//    }
//}
//
//
//struct AircraftCopy: View {
//    var body: some View {
//        GeometryReader { geometry in
//            let width = geometry.size.width
//            let height = geometry.size.height
//            let size = min(width, height)
//
//            let nearLine = size * 0.05
//            let farLine = size
//            let middle = size / 2
//
//            Path { path in
//                //tail
//                path.move(to: CGPoint(x: 20, y: 100))
//                path.addLine(to: CGPoint(x: 10, y: 80))
//                path.addLine(to: CGPoint(x: 20, y: 80))
//
//                path.addLine(to: CGPoint(x: 30, y: 90))
//                path.addLine(to: CGPoint(x: 90, y: 85))
//
//                //wing
//                path.addLine(to: CGPoint(x: 80, y: 20))
//                path.addLine(to: CGPoint(x: 90, y: 20))
//                path.addLine(to: CGPoint(x: 120, y: 85))
//                path.addLine(to: CGPoint(x: 150, y: 85))
//
//                //nose
//                path.addQuadCurve(
//                    to: CGPoint(x: 150, y: 115),
//                    control: CGPoint(x: 200, y: 100)
//                )
//
//                //wing
//                path.addLine(to: CGPoint(x: 150, y: 115))
//                path.addLine(to: CGPoint(x: 120, y: 115))
//                path.addLine(to: CGPoint(x: 90, y: 180))
//                path.addLine(to: CGPoint(x: 80, y: 180))
//
//                //tail
//                path.addLine(to: CGPoint(x: 90, y: 115))
//                path.addLine(to: CGPoint(x: 30, y: 110))
//
//                path.addLine(to: CGPoint(x: 20, y: 120))
//                path.addLine(to: CGPoint(x: 10, y: 120))
//                path.addLine(to: CGPoint(x: 20, y: 100))
//            }
//            .stroke(Color.blue, lineWidth: 0.8)
////            .fill(Color(red: 81/255, green: 155/255, blue: 200/255))
//        }
//    }
//}
