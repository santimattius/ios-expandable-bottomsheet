//
//  CourseDetailView.swift
//  ios-expandable-bottomsheet
//
//  Created by Santiago Mattiauda on 3/12/21.
//

import SwiftUI

struct CourseDetailView: View {
    var body: some View {
        
        VStack{
            //HandleBar
            Rectangle()
                .frame(width: 70, height: 8)
                .foregroundColor(Color(.systemGray4))
                .cornerRadius(8)
            
            //Title Bar
            Text("Title Text")
                .font(.headline)
                .foregroundColor(.primary)
        }
        
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView()
    }
}
