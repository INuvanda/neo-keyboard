//
//  ContentView.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 19.03.22.
//
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Neo Keyboard")
                    .font(.headline)
            Text(
                    """
                    This app provides an on-screen keyboard with neo-layout. You can enable this keyboard in the \
                    preferences app on your device.
                    """
            )
                    .multilineTextAlignment(.center)
        }
            .padding()
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView_Previews.previews)
    }
    #endif
}
