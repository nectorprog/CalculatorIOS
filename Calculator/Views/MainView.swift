//
//  MainView.swift
//  Calculator
//
//  Created by Владислав Пономаренко on 08.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        // MARK: Property
        let buttonsArray: [[Buttons]] = [
            [.clear, .negative, .percent, .divide],
            [.seven, .eight, .nine, .multiple],
            [.four, .five, .six, .minus],
            [.one, .two, .three, .plus],
            [.zero, .decimal, .equal]
        ]
        // MARK: Background
        ZStack {
            // MARK: Backgroung
            Color.black
                .ignoresSafeArea()
            VStack {
                // MARK: Display
                HStack{
                    Spacer()
                    Text("0")
                        .foregroundColor(.white)
                        .font(.system(size: 90))
                        .fontWeight(.light)
                }
                
                // MARK: Buttons
                ForEach(buttonsArray, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button{
                                // action
                            } label: {
                                Text(item.rawValue)
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.white)
                                    .background(.orange)
                                    .cornerRadius(40)
                            }
                        }
                    }
                    
                }
                
                
            }
            
        }
    }
}

#Preview {
    MainView()
}
