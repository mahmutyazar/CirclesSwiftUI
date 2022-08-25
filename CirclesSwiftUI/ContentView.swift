//
//  ContentView.swift
//  CirclesSwiftUI
//
//  Created by Mahmut Yazar on 25.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    
    
    
    var body: some View {
        ZStack {
            
            Circle(lineWidth: 40, backgroundColor: Color.blue.opacity(0.20), foregroundColor: .blue, percentage: firstCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 90
                    } else {
                        self.firstCirclePercentage = 0
                    }
                }
            
            Circle(lineWidth: 40, backgroundColor: Color.green.opacity(0.20), foregroundColor: .green, percentage: secondCirclePercentage)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 80
                    } else {
                        self.secondCirclePercentage = 0
                    }
                }
            
            Circle(lineWidth: 40, backgroundColor: Color.yellow.opacity(0.20), foregroundColor: .yellow, percentage: thirdCirclePercentage)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        self.thirdCirclePercentage = 70
                    } else {
                        self.thirdCirclePercentage = 0
                    }
                }
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
