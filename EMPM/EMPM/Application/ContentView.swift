//
//  ContentView.swift
//  EMPM
//
//  Created by Kavya Krishna K. on 10/04/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            TabBarView()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
