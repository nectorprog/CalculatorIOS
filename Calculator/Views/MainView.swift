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
            VStack(spacing: 12) {
                Spacer()
                // MARK: Display
                HStack{
                    Spacer()
                    Text("0")
                        .foregroundColor(.white)
                        .font(.system(size: 90))
                        .fontWeight(.light)
                        .padding(.horizontal, 28)
                }
                // MARK: Buttons
                ForEach(buttonsArray, id: \.self) { row in
                    HStack(spacing: 12){
                        ForEach(row, id: \.self) { item in
                            Button{
                                // action
                            } label: {
                                Text(item.rawValue)
                                    .frame(
                                        width: self.buttonWidth(item: item),
                                        height: self.buttonHeight())
                                    .foregroundColor(item.buttonFontColor)
                                    .background(item.buttonColor)
                                    .font(.system(size: 35))
                                    .cornerRadius(40)
                            }
                        }
                    }
                    
                }
                .padding(.bottom)
            }
            
        }
    }
    
    // MARK: Size of Button Methods
    func buttonWidth(item: Buttons) -> CGFloat {
        let spacing: CGFloat = 12
        let totalSpacing: CGFloat = 5 * spacing
        let totalColumns: CGFloat = 4
        let screenWidth = UIScreen.main.bounds.width
        let zeroTotalSpacing: CGFloat = 4 * spacing
        
        if item == .zero {
            return (screenWidth - zeroTotalSpacing) / totalColumns * 2
        }
        
        return (screenWidth - totalSpacing) / totalColumns
    }
    
    func buttonHeight() -> CGFloat {
        let spacing: CGFloat = 12
        let totalSpacing: CGFloat = 5 * spacing
        let totalColumns: CGFloat = 4
        let screenWidth = UIScreen.main.bounds.width
        
        return (screenWidth - totalSpacing) / totalColumns
    }
}

#Preview {
    MainView()
}
