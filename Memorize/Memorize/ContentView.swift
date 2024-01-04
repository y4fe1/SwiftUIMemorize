//
//  ContentView.swift
//  Memorize
//
//  Created by admin on 2024/1/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
        
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}














#Preview {
    ContentView()
}
