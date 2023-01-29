//
//  ContentView.swift
//  counter-app
//
//  Created by Sarah Sami on 2023-01-29.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    
    
    
    
    
    fileprivate func showCountText() -> Text {
        return Text("\(counter)")
            .font(Font.system(size: 68))
            .foregroundColor(Color.blue)
    }
    
    fileprivate func showResetButton() -> some View {
        return // Reset Button
        Button(action: {
            self.counter = 0
        }) {
            Text("Reset")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 130, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.red)
        .cornerRadius(8)
    }
    
    fileprivate func showAddButton() -> some View {
        return // Action Button
        Button(action: {
            self.counter += 1
        }) {
            Text("Add 1")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 130, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.blue)
        .cornerRadius(8)
    }
    
    fileprivate func showSubtractButton() -> some View {
        return Button(action: {
            self.counter -= 1
        }) {
            Text("Subtract")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 130, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.blue)
        .cornerRadius(8)
    }
    
    fileprivate func showAddByTwoButton() -> some View {
        return Button(action: {
            self.counter += 2
        }) {
            Text("Add 2")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 130, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.blue)
        .cornerRadius(8)
    }
    
    var body: some View {
        ZStack {
            Image("background-image")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 30) {
                showCountText()
                
                HStack(alignment: .center, spacing: 64) {
                    showAddButton()
                    showSubtractButton()
                }
                HStack(alignment: .center, spacing: 64) {
                    showAddByTwoButton()
                    showResetButton()
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
