//
//  MainView.swift
//  Calculator
//
//  Created by Владислав Пономаренко on 08.02.2024.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
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
                    Text(viewModel.value)
                        .foregroundColor(.white)
                        .font(.system(size: 90))
                        .fontWeight(.light)
                        .padding(.horizontal, 28)
                }
                // MARK: Buttons
                ForEach(viewModel.buttonsArray, id: \.self) { row in
                    HStack(spacing: 12){
                        ForEach(row, id: \.self) { item in
                            Button{
                                viewModel.didTap(item: item)
                            } label: {
                                Text(item.rawValue)
                                    .frame(
                                        width: viewModel.buttonWidth(item: item),
                                        height: viewModel.buttonHeight())
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
}

#Preview {
    MainView()
        .environmentObject(ViewModel())
}
