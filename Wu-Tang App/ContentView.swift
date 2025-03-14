//
//  ContentView.swift
//  Wu-Tang App
//
//  Created by Robert Beachill on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var enteredName = ""
    @State private var staticCoderNameIs = ""
    @State private var wuTangName = "  "
//    @State private var imageName = "wu-tang"
    private let firstColumn = ["Algorithmic",
                               "Byte",
                               "Cache",
                               "Debug",
                               "Echo",
                               "Function",
                               "Git",
                               "Hex",
                               "Infinite",
                               "Java",
                               "Kernel",
                               "Logic",
                               "Module",
                               "Node",
                               "Object",
                               "Pixel",
                               "Query",
                               "Runtime",
                               "Script",
                               "Token",
                               "Undefined",
                               "Virtual",
                               "Web",
                               "Xcode",
                               "Yota",
                               "Zero"]
    private let secondColumn = ["$tack",
                                "Processor",
                                "Cipher",
                                "Daemon",
                                "EndPoint",
                                "Framework",
                                "Gateway",
                                "Hub",
                                "Interrupt",
                                "Crash",
                                "Loop",
                                "Module",
                                "Nexus",
                                "Optimizer",
                                "Protocol",
                                "Queue",
                                "Router",
                                "Stack",
                                "Thread",
                                "Update",
                                "Variable",
                                "Widget",
                                "Terminal",
                                "Yield",
                                "Zen",
                                "Ace",
                                "Breakpoint",
                                "Root",
                                "Instance",
                                "Access",
                                "Archive",
                                "Control",
                                "Justice"]
    @FocusState private var textFieldIsFocused: Bool
    
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
            
            TextField("Enter name here", text: $enteredName)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
            }
            .padding()
            .focused($textFieldIsFocused)
            
            
            Button {
                wuTangName = getWuTangName(WuTangName: enteredName) + " " + secondColumn[Int.random(in: 0..<secondColumn.count)]
                textFieldIsFocused = false
                staticCoderNameIs = "Your Wu-Tang Coder Name is"
            } label: {
                Image("wu-tang-button")
                Text("Get It!")
            }
            .disabled(enteredName.isEmpty)
            .font(.title2)
            .fontWeight(.bold)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .foregroundStyle(.yellow)
            
            Spacer()
            
            VStack {
                Text(textFieldIsFocused ? "" : staticCoderNameIs)
                Text(textFieldIsFocused ? "" : wuTangName)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
            }
            .font(.largeTitle)
            .frame(height: 140)
            
            Spacer()
            
            Image(textFieldIsFocused ? "" : "wu-tang")
                .resizable()
                .scaledToFit()
            
        }
//        .ignoresSafeArea(.keyboard)
    }
    
    func getWuTangName(WuTangName: String) -> String {
        let firstChar = WuTangName.capitalized.first!
        let firstCharIndex = firstColumn.firstIndex(where: {$0.first == firstChar} )
        return firstCharIndex == 0 ? firstColumn[firstColumn.count - 1] : firstColumn[firstCharIndex! - 1]
    }
}

#Preview {
    ContentView()
}
