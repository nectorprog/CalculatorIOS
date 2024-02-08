//
//  Extension.swift
//  Calculator
//
//  Created by Владислав Пономаренко on 08.02.2024.
//

import SwiftUI

extension Buttons {
    func buttonToOperation() -> Operation {
        switch self {
        case .plus:
            return .addiction
        case .minus:
            return .substract
        case .multiple:
            return .multiply
        case .divide:
            return .divide
        default:
            return .none
        }
    }
 }
