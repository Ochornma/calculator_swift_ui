//
//  CalculatorButtonView.swift
//  SwiftUI Calculator
//
//  Created by Promise Ochornma on 04/03/2023.
//

import Foundation
import SwiftUI

struct CalculatorButtonView: View{
    var button: CalculatorButton
    @EnvironmentObject var env: GlobalEnviroment
    
    var body: some View {
        Button(action: {
            env.receiveInput(button: button)
        }, label: {
            Text(button.title)
                .font(.system(size: 32))
                .foregroundColor(.white)
                .frame(width: buttonWidth(button: button), height: buttonHeight())
                .background(button.backgroundColor)
                .cornerRadius(buttonWidth(button: button)/2)
        })
    }
    
    private func buttonWidth(button: CalculatorButton) -> CGFloat{
        if button == .zero{
            return (UIScreen.main.bounds.width - (4 * 12))/2
        }
        return (UIScreen.main.bounds.width - (5 * 12))/4
    }
    
    private func buttonHeight() -> CGFloat{
        return (UIScreen.main.bounds.width - (5 * 12))/4
    }

}
