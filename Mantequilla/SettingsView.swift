//
//  SettingsView.swift
//  Mantequilla
//
//  Created by Yaroslav G on 28.07.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        Form {
            Section(header: Text("Appearance")) {
                Toggle("Dark Mode", isOn: $isDarkMode)
                    .onChange(of: isDarkMode) { newValue in
                        // Update the appearance mode based on the toggle value
                        UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = newValue ? .dark : .light
                    }
            }
        }
        .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
