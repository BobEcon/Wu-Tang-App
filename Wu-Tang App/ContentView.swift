//
//  ContentView.swift
//  Wu-Tang App
//
//  Created by Robert Beachill on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var enteredName = ""
    
    var body: some View {
        VStack {
            Text("Wu-Tang\nCoder Name Generator")
                .font(.title)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .foregroundStyle(.yellow)
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                .background(.black)
            
            Spacer()
            
            TextField("Enter name here", text: $enteredName) {
                //TODO:
            }
            .font(.title2)
            .textFieldStyle(.roundedBorder)
//            .frame(width: 30)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
            }
            .padding()
            
            Spacer()
            
            Image("wu-tang")
                .resizable()
                .scaledToFit()
                
        }
//        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}
