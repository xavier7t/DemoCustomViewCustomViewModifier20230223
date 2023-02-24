//
//  ContentView.swift
//  DemoCustomViewCustomViewModifier20230223
//
//  Created by Xavier on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tap Me")
                .modifier(ButtonLabel())
            Image(systemName: "phone")
                .modifier(ButtonLabel())
            Spacer()
                .frame(height: 40)
            HStack {
                Image(systemName: "apple.logo")
                Text("Sign in with Apple")
            }
            .modifier(ButtonLabel(width: 210, height: 40, cornerRadius: 5, fgColor: .white, bgColor: .black))
            VStack {
                Text("Send a message")
                Spacer()
                    .frame(height: 10)
                Image(systemName: "message.fill")
            }
            .modifier(ButtonLabel(width: 150, height: 70, cornerRadius: 10, fgColor: .white, bgColor: .pink))
        }
        .padding()
    }
}



struct ButtonLabel: ViewModifier {
    var width: CGFloat = 150
    var height: CGFloat = 40
    var cornerRadius: CGFloat = 10
    var fgColor: Color = .white
    var bgColor: Color = .indigo
    
    func body(content: Content) -> some View {
        content
            .bold()
            .frame(width: width, height: height)
            .background(bgColor)
            .cornerRadius(cornerRadius)
            .foregroundColor(fgColor)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
