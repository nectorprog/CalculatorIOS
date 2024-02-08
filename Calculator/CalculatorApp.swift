//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Владислав Пономаренко on 08.02.2024.
//

import SwiftUI

@main
struct CalculatorApp: App {
    
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
