//
//  ContentView.swift
//  LocalizationExample
//
//  Created by Yulibar Husni on 11/07/23.
//

import SwiftUI

/// # CalculationView
/// We will use this to fill out strings to show in ``CalculationView``.
///
/// ## Overview
///  This class will be used as a "bridge" between ``CalculationView`` and `Localizable`. This will help the localization within the app. Please check `Localizable` String File to see the full writings.
///
struct CalculationView: View {
    /// The ViewModel that will be used in this view.
    @ObservedObject var areaCalculationVM: AreaCalculationVM
    
    /// The main screen of this project. the calculation will be managed by ``AreaCalculationVM``
    var body: some View {
        VStack {
            // MARK: Title text
            Text(NSLocalizedString(AppString.areaCalculator, comment: "area calculator").capitalized)
                .font(.largeTitle)
                .bold()
                .padding(.vertical)
            Spacer()
            
            // MARK: User inputs
            VStack {
                HStack {
                    HStack {
                        Text(NSLocalizedString(AppString.length, comment: "length").capitalized)
                        Spacer()
                    }
                    .frame(minWidth: 80, maxWidth: 100)
                    .bold()
                    TextField(0.description, value: $areaCalculationVM.length, format: .number)
                        .multilineTextAlignment(.trailing)
                    Text(areaCalculationVM.currentLengthFormat.symbol)
                }
                HStack {
                    HStack {
                        Text(NSLocalizedString(AppString.width, comment: "width").capitalized)
                        Spacer()
                    }
                    
                    .frame(minWidth: 80, maxWidth: 100)
                    .bold()
                    TextField(0.description, value: $areaCalculationVM.width, format: .number)
                        .multilineTextAlignment(.trailing)
                    Text(areaCalculationVM.currentLengthFormat.symbol)
                }
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            Spacer()
            Divider()
            Spacer()
            
            // MARK: Resuts
            Group {
                VStack {
                    Text(NSLocalizedString(AppString.result, comment: "width").capitalized)
                    Text(areaCalculationVM.area, format: .measurement(width: .abbreviated))
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                }
            }
            Spacer()
        }
        .keyboardType(.decimalPad)
    }
}

