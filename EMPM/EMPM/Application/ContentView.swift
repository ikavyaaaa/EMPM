//
//  ContentView.swift
//  EMPM
//
//  Created by Kavya Krishna K. on 10/04/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selectedTab: Tab = .home
        @Namespace private var namespace
        
        var body: some View {
            ZStack(alignment: .bottom) {
                Group {
                    switch selectedTab {
                    case .home:
                        HomeView()
                            .background(.primaryBackground)
                    case .emplopyees:
                        EmployeesView()
                    case .video:
                        VideoView()
                    case .more:
                        MoreView()
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
                TabBarView(selectedTab: $selectedTab, namespace: namespace)
            }
        }
}

struct HomeView: View {
    var body: some View {
        Color.primaryBackground
            .ignoresSafeArea()
            .overlay(Text("Home").font(.largeTitle).foregroundColor(.red))
    }
}

struct EmployeesView: View {
    var body: some View {
        Color.primaryBackground
            .ignoresSafeArea()
            .overlay(Text("Employees").font(.largeTitle).foregroundColor(.red))
    }
}

struct VideoView: View {
    var body: some View {
        Color.primaryBackground
            .ignoresSafeArea()
            .overlay(Text("Video").font(.largeTitle).foregroundColor(.red))
    }
}

struct MoreView: View {
    var body: some View {
        Color.primaryBackground
            .ignoresSafeArea()
            .overlay(Text("More").font(.largeTitle).foregroundColor(.red))
    }
}


#Preview {
    ContentView()
}
