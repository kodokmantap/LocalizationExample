//
//  AreaCalculationVM.swift
//  LocalizationExample
//
//  Created by Yulibar Husni on 12/07/23.
//

import Foundation

/// # Area Calculation ViewModel
///
/// A ViewModel class that calculates the area of a rectangle based on user input for length and width.
///
/// ## Overview
///
/// The `AreaCalculationVM` class is an `ObservableObject` that provides properties and methods for calculating the area of a rectangle. It utilizes the `UnitLength` and `UnitArea` classes from the `Foundation` framework for localization and unit conversion.
///
/// ## Properties
///
/// #### length
/// The length of the rectangle, provided by the user as a `Double` from ``CalculationView``.
///
/// #### width
/// The length of the rectangle, provided by the user as a `Double` from ``CalculationView``
/// - Note: ``length`` and ``width`` properties is marked with `@Published`, allowing it to be observed for changes.
///
/// #### currentLengthFormat and areaUnitFormat
/// These properties is initialized with the current locale using the `UnitLength(forLocale:)` and`UnitArea(forLocale:)`initializer.
///
/// #### area
/// A computed property of type `Measurement<UnitArea>` that calculates the area of the rectangle based on the provided length and width values.
///
/// ### Localization and Unit Conversion
///
/// The `AreaCalculationVM` class utilizes the `UnitLength` and `UnitArea` classes from the `Foundation` framework for localization and unit conversion. It initializes the `currentLengthFormat` and `areaUnitFormat` properties based on the current locale.
///
/// - Important: The `UnitLength(forLocale:)` and `UnitArea(forLocale:)` initializer determines the appropriate area unit format for the user's locale.
///

class AreaCalculationVM: ObservableObject {
    
    /// The length from user's input Double
    @Published var length: Double?
    /// - Note: This property is marked with `@Published`, allowing it to be observed for changes.

    /// The width from user's input as Double
    @Published var width: Double?
    
    /// A closure-based property that returns the unit length format based on the current locale.
    var currentLengthFormat: UnitLength = UnitLength(forLocale: Locale.current)
    
    /// A closure-based property that returns the unit area format based on the current locale.
    var currentAreaUnitFormat = UnitArea(forLocale: Locale.current)
    
    /// A computed property of type `Measurement<UnitArea>` that calculates the area of the rectangle based on the provided length and width values.
    /// - Note: This property calculates the area by multiplying the `length` and `width` values and returns a `Measurement` object with the calculated value and the `areaUnitFormat`.
    var area: Measurement<UnitArea> {
        let areaResult = (length ?? 0.0) * (width ?? 0.0)
        return Measurement(value: areaResult, unit: currentAreaUnitFormat)
    }
    ///
    ///
}

/// Sets the style for navigation split views within this view.
///
/// - Parameter style: The style to set.
///
/// - Returns: A view that uses the specified navigation split view style.
