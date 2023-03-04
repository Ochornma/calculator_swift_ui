//
//  ContentView.swift
//  SwiftUI Calculator
//
//  Created by Promise Ochornma on 02/03/2023.
//

import SwiftUI
import CoreData

enum CalculatorButton: String{
    case zero, one, two, three, four, five, six, seven, eight, nine
    case decimal
    case equal, plus, minus, divide, multiply
    case ac, plusMinus, percent
    
    var backgroundColor: Color{
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
            return Color(.darkGray)
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
        default:
            return Color(.orange)
        }
    }
    var title: String{
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .equal:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .divide:
            return "÷"
        case .multiply:
            return "X"
        case .ac:
            return "AC"
        case .plusMinus:
            return "±"
        case .percent:
            return "%"
        case .decimal:
            return "."
        }
    }
}

struct ContentView: View {
    let buttons:[[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .decimal, .equal]
    ]

    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 12){
                HStack{
                    Spacer()
                    Text("42").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                ForEach(buttons, id: \.self){row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self){button in
                            Button(action: {
                                
                            }, label: {
                                Text(button.title)
                                    .font(.system(size: 32))
                                    .foregroundColor(.white)
                                    .frame(width: buttonWidth(button: button), height: buttonHeight())
                                    .background(button.backgroundColor)
                                    .cornerRadius(buttonWidth(button: button)/2)
                            })
                          
                        }
                    }
                }
                
            }.padding(.bottom)
        }
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
