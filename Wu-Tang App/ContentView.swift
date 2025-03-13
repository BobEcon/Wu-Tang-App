//
//  ContentView.swift
//  Wu-Tang App
//
//  Created by Robert Beachill on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var enteredName = ""
    @State private var staticCoderNameIs = "Your Wu-Tang Coder Name is"
    @State private var wuTangName = "  "
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
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
            }
            .padding()
            .onChange(of: enteredName) {
                if enteredName.isEmpty {
                    wuTangName = "  "
                }
            }
            
            Button {
                //TODO:
        
                    wuTangName = getWuTangName(WuTangName: enteredName) + " " + secondColumn[Int.random(in: 0..<secondColumn.count)]

                
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
                Text(staticCoderNameIs)
                Text(wuTangName)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
            }
            .font(.largeTitle)
            .frame(height: 140)
            
            Spacer()
            
            Image("wu-tang")
                .resizable()
                .scaledToFit()
            
        }
    }
    
    func getWuTangName(WuTangName: String) -> String {
        let firstChar = WuTangName.first!
        let firstCharIndex = firstColumn.firstIndex(where: {$0.first == firstChar} )
        return firstCharIndex == 0 ? firstColumn[firstColumn.count - 1] : firstColumn[firstCharIndex! - 1]
    }
}

#Preview {
    ContentView()
}
