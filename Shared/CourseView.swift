//
//  CourseView.swift
//  DesignCodeCourse
//
//  Created by Ethan on 2020-12-11.
//

import SwiftUI

struct CourseView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            CourseItem()
                .matchedGeometryEffect(id: "Card", in: namespace, isSource: !show)
                .frame(width: 335, height: 250)
            if show {
                ScrollView {
                    CourseItem()
                        .matchedGeometryEffect(id: "Card", in: namespace)
                        .frame(height: 300)
                    VStack {
                        ForEach(0 ..< 20) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .transition(
                    .asymmetric(insertion: <#T##AnyTransition#>, removal: <#T##AnyTransition#>)
                    AnyTransition
                        .opacity.animation(Animation.spring().delay(0.3))
                )
                .edgesIgnoringSafeArea(.all)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
            show.toggle()
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
