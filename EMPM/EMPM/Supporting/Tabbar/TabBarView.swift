//
//  TabBarView.swift
//  EMPM
//
//  Created by Kavya Krishna K. on 10/04/25.
//


import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: Tab
    var namespace: Namespace.ID

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.primaryBackground)
                .shadow(color: .gray.opacity(0.4), radius: 20, x: 0, y: 20)
                .padding(.bottom, 0)
            
            TabsLayoutView(selectedTab: $selectedTab, namespace: namespace)
        }
        .frame(height: 70, alignment: .center)
    }
}

fileprivate struct TabsLayoutView: View {
    @Binding var selectedTab: Tab
    var namespace: Namespace.ID

    var body: some View {
        HStack {
            Spacer(minLength: 0)
            
            ForEach(Tab.allCases) { tab in
                TabButton(tab: tab, selectedTab: $selectedTab, namespace: namespace)
                    .frame(width: 65, height: 65)
                
                Spacer(minLength: 0)
            }
        }
    }

    private struct TabButton: View {
        let tab: Tab
        @Binding var selectedTab: Tab
        var namespace: Namespace.ID
        
        var body: some View {
            Button {
                withAnimation {
                    selectedTab = tab
                }
            } label: {
                ZStack {
                    if isSelected {
                        Circle()
                            .shadow(radius: 10)
                            .background {
                                Circle()
                                    .stroke(lineWidth: 15)
                                    .foregroundColor(.clear)
                            }
                            .offset(y: -40)
                            .matchedGeometryEffect(id: "Selected Tab", in: namespace)
                    }
                    
                    Image(systemName: tab.icon)
                        .font(.system(size: 23, weight: .semibold, design: .rounded))
                        .foregroundColor(isSelected ? .init(white: 0.9) : .gray)
                        .scaleEffect(isSelected ? 1 : 0.8)
                        .offset(y: isSelected ? -40 : 0)
                }
            }
            .buttonStyle(.plain)
        }
        
        private var isSelected: Bool {
            selectedTab == tab
        }
    }
}

enum Tab: Int, Identifiable, CaseIterable, Comparable {
    static func < (lhs: Tab, rhs: Tab) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    
    case home, emplopyees, video, more
    internal var id: Int { rawValue }
    
    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .emplopyees:
            return "person"
        case .video:
            return "video.fill"
        case .more:
            return "ellipsis"
        }
    }
}
