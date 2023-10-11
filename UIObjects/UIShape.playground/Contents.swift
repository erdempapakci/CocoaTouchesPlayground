
//
//import SwiftUI
//
//struct StreamLogo: Shape {
//    var controlPoint: Double
//    
//    func path(in rect: CGRect) -> Path {
//        var pencil = Path()
//        
//        // INSTRUCTIONS
//        // 1. Move to an origin
//        pencil.move(to: CGPoint(x: rect.minX, y: rect.minY))
//        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
//        // 2. Move horizontally downward
//        pencil.addLine(to: CGPoint(x: rect.midX - 20, y: rect.minY + 8))
//        // 3.Move upward at an angle towards midX
//        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.minY - 15))
//        // 4. Opposite of the previous line
//        pencil.addLine(to: CGPoint(x: rect.midX + 20, y: rect.minY + 8))
//        // 5. Opposite of the first line
//        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
//        // 6. Move downwards
//        pencil.addLine(to: CGPoint(x: rect.maxX - 40, y: rect.maxY))
//        // 7. Move horizontally
//        pencil.addLine(to: CGPoint(x: rect.minX + 40, y: rect.maxY))
//        // 8. Close the path
//        // Option 1
//        //path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
//        // Option 2
//        pencil.closeSubpath()
//        
//        return pencil
//    }
//}
//
//struct ContentView: View {
//    var controlPoint = 0.0
//    
//    var body: some View {
//        StreamLogo(controlPoint: controlPoint)
//            .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//            .frame(width: 184, height: 80)
//            .offset(x: 20, y: 16)
//    }
//    
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
