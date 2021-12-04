//
//  ContentView.swift
//  ios-expandable-bottomsheet
//
//  Created by Santiago Mattiauda on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(courses){ course in
                    CourseRow(course: course)
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Cursos Online")
        }
    }
}

struct CourseRow:View{
    
    var course: Course
    
    var body: some View{
        HStack{
           Image(course.image)
               .resizable()
               .aspectRatio(contentMode: .fill)
               .frame(width:50, height:50)
               .cornerRadius(10)
           Text(course.name)
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
