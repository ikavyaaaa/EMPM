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
                    .padding(.bottom, 10)
            }
        }
}

struct HomeView: View {
    var body: some View {
        Color.blue
            .ignoresSafeArea()
            .overlay(Text("Home").font(.largeTitle).foregroundColor(.white))
    }
}

struct EmployeesView: View {
    var body: some View {
        Color.green
            .ignoresSafeArea()
            .overlay(Text("Employees").font(.largeTitle).foregroundColor(.white))
    }
}

struct VideoView: View {
    var body: some View {
        Color.orange
            .ignoresSafeArea()
            .overlay(Text("Video").font(.largeTitle).foregroundColor(.white))
    }
}

struct MoreView: View {
    var body: some View {
        Color.purple
            .ignoresSafeArea()
            .overlay(Text("More").font(.largeTitle).foregroundColor(.white))
    }
}


#Preview {
    ContentView()
}
