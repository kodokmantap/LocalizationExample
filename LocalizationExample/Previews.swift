//
//  Previews.swift
//  LocalizationExample
//
//  Created by Yulibar Husni on 11/07/23.
//

import Foundation
import SwiftUI

/// # Previews
///
/// A preview provider struct for this project.
///
/// ## Overview
///
/// The `ContentView_Previews` struct contains preview configurations for the `ContentView` view, demonstrating how the view appears with different locales and layout directions.
///
/// ## Preview Configurations
///
/// #### ID (Indonesia), US (United States), AR (Arabic)
/// A collection of preview configuration that initializes the `ContentView` with an `AreaCalculationVM` instance and sets the locale to Indonesian (`id_ID`). Other preview will use the same pattern except for the **Arabic**
///
/// - Note: The view's preview display name is set to "ID".
/// - Important: You can add more previews group by adding new group View, for Right-To-Left type script (similar with Arabic writings), you will need to add `.environment(\.layoutDirection, .rightToLeft)`. Please check the arabic locale (shown with `"ar_SA`) in `.environment`.
///

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalculationView(areaCalculationVM: AreaCalculationVM())
                .environment(\.locale, .init(identifier: "id_ID"))
                .previewDisplayName("ID")
        }
        Group {
            CalculationView(areaCalculationVM: AreaCalculationVM())
                .environment(\.locale, .init(identifier: "en_US"))
                .previewDisplayName("US")
        }
        Group {
            CalculationView(areaCalculationVM: AreaCalculationVM())
                .environment(\.locale, .init(identifier: "ar_SA"))
                .previewDisplayName("AR")
                .environment(\.layoutDirection, .rightToLeft)
        }
    }
}
