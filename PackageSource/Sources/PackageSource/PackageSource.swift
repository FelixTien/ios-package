// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 16, *)
public struct PackageSource: View {
    var boxBackgroundColor: Color
    var boxWidth: CGFloat
    var boxHeight: CGFloat
    var title: String
    var message: String
    var messageSize: CGFloat
    @Binding var press: Bool
    
    public var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(boxBackgroundColor)
                .cornerRadius(10)
                .shadow(radius: 5, y: 10)
                .frame(width: boxWidth, height: boxHeight)
            VStack {
                VStack{
                    Text(title)
                        .font(.title3)
                        .bold()
                    Text(message)
                        .font(.system(size: messageSize))
                }
                .frame(height: boxHeight * 0.5)
                Divider()
                    .frame(width: boxWidth * 0.95)
                Button(action: {
                    press = false
                }, label: {
                    Text("OK")
                        .bold()
                        .font(.title3)
                })
                .offset(y: boxHeight * 0.05)
            }
        }
        .padding()
    }
}
