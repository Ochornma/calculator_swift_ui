//
//  SwiftUI_CalculatorApp.swift
//  SwiftUI Calculator
//
//  Created by Promise Ochornma on 02/03/2023.
//

import SwiftUI

@main
struct SwiftUI_CalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
