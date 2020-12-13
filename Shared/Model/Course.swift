//
//  Course.swift
//  DesignCodeCourseiOS
//
//  Created by Ethan on 2020-12-13.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
}

var coures = [
    Course(title: "UI Design for iOS 14", subtitle: "20 sections", image: "Illustration 1", color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))),
    
    Course(title: "Build an app with iOS 14", subtitle: "20 sections", image: "Illustration 2", color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
    
    Course(title: "UI Design for iPadOS", subtitle: "12 sections", image: "Illustration 3", color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))),
    
    Course(title: "UI Design for macOS", subtitle: "30 sections", image: "Illustration 4", color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))),
    
    Course(title: "UI Design for iOS 13", subtitle: "18 sections", image: "Illustration 5", color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))),
    
    Course(title: "Design System in Figma", subtitle: "38 sections", image: "Illustration 6", color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))),
    
    Course(title: "React for designers", subtitle: "30 sections", image: "Illustration 7", color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))),
    
    Course(title: "UI Design app", subtitle: "8 sections", image: "Illustration 8", color: Color(#colorLiteral(red: 0.01712530345, green: 0.1303478423, blue: 0.4903682269, alpha: 1)))
]
