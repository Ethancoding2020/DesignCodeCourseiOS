//
//  Sidebar.swift
//  DesignCodeCourse
//
//  Created by Ethan on 2020-12-11.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
    NavigationView {
        #if os(iOS)
        content
            .navigationTitle("Menu / Learn")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "person.crop.circle")
            }
        }
        #else
        content
            .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {}) {
                        Image(systemName: "person.crop.circle")
                    }
                }
            }
        #endif
        
            CourseView()
        }
    }
    var content: some View {
        List {
            NavigationLink(destination: CourseView()) {
                Label("Courses", systemImage: "list.bullet.rectangle")
            }
            Label("Turtorials", systemImage: "book.closed")
            Label("Livestreams", systemImage: "tv")
            Label("Certificates", systemImage: "mail.stack")
            Label("Serch", systemImage: "magnifyingglass")
        }
        .listStyle(SidebarListStyle())
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
