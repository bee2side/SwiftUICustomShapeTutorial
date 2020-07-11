//
//  ContentView.swift
//  SwiftUICustomShapeTutorial
//
//  Created by Doris on 2020/07/11.
//  Copyright © 2020 kakao. All rights reserved.
//

import SwiftUI

struct Arrow: Shape {

    @available(iOS 13.0, *)
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width = rect.width
            let height = rect.height
            
            path.addLines( [
                CGPoint(x: width * 0.4, y: height),
                CGPoint(x: width * 0.4, y: height * 0.4),
                CGPoint(x: width * 0.2, y: height * 0.4),
                CGPoint(x: width * 0.5, y: height * 0.1),
                CGPoint(x: width * 0.8, y: height * 0.4),
                CGPoint(x: width * 0.6, y: height * 0.4),
                CGPoint(x: width * 0.6, y: height)
            ])
            path.closeSubpath()
            
        }
    }
}

struct ContentView: View {
    @available(iOS 13.0, *)
    var body: some View {
        Arrow()
            .stroke(lineWidth: 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        ContentView()
    }
}
