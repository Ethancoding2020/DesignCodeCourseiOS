//
//  ContentView.swift
//  Shared
//  Test Ewing 12345
//  Created by Ethan on 2020-12-1010.
//

import SwiftUI

struct ContentView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
       Sidebar()
        #else
        Sidebar()
            .frame(minWidth: 1000, maxHeight: 600)
        #endif
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
