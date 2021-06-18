//
//  CustomShape.swift
//  Custom Slider
//
//  Created by Nerimene on 26/5/2021.
//

import SwiftUI

struct CustomShape: Shape {
        
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            let width = rect.width / 2
            path.addLine(to: CGPoint(x: width - 80, y: rect.height))
            path.addLine(to: CGPoint(x: width - 70, y: rect.height - 25))
            path.addLine(to: CGPoint(x: width + 70, y: rect.height - 25))
            path.addLine(to: CGPoint(x: width + 80, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}
