//
//  Symbols.swift
//  VacationInVegas
//
//  Created by Karla Miriam Dos santos Goncalves on 03/10/24.
//

import SwiftUI

struct Symbols: View {
    
    @State private var shouldIBounce = false
    @State private var shouldIRotate = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.pulse)
            
            Image(systemName: "airplane")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.teal)
                .symbolEffect(.variableColor.reversing)
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.purple)
                .symbolEffect(.variableColor)
            
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: shouldIBounce)
                .onTapGesture {
                    shouldIBounce.toggle()
                }
            
            Image(systemName: "cloud.sun.rain.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.blue)
                .symbolEffect(.pulse, value: shouldIRotate)
                
            Image(systemName: "sun.max.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.yellow)
                .symbolEffect(.pulse)
        }
        .padding()
    }
}

#Preview {
    Symbols()
}

