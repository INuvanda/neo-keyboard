//
//  NeoKeyboardApp.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 19.03.22.
//
//

import Foundation
import SwiftUI


@main
struct NeoKeyboardApp: App {

    init() {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    }

    var body: some Scene {
        WindowGroup {
            #if targetEnvironment(simulator)
            ContentView_Previews.previews
            #else
            ContentView()
            #endif
        }
    }
}
