//
//  LocalizationExampleApp.swift
//  LocalizationExample
//
//  Created by Yulibar Husni on 11/07/23.
//

import SwiftUI

@main
struct LocalizationExampleApp: App {
    var body: some Scene {
        WindowGroup {
            CalculationView(areaCalculationVM: AreaCalculationVM())
        }
    }
}
