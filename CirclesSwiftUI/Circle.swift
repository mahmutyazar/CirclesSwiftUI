//
//  Circle.swift
//  CirclesSwiftUI
//
//  Created by Mahmut Yazar on 25.08.2022.
//

import SwiftUI

struct Circle: View {
    
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
            CircularShape()
                .stroke(style: StrokeStyle(lineWidth: lineWidth))
                .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                .stroke(style: StrokeStyle(lineWidth: lineWidth))
                .fill(foregroundColor)
                
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth / 1.5)
    }
}
struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        Circle(lineWidth: 10, backgroundColor: .red, foregroundColor: .blue, percentage: 50)
    }
}
}
