//
//  ContentView.swift
//  ios-expandable-bottomsheet
//
//  Created by Santiago Mattiauda on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showCourseDetail = false
    @State private var selectedCourse: Course?
    
    var body: some View {
        ZStack{
            NavigationView{
                List{
                    ForEach(courses){ course in
                        CourseRow(course: course)
                            .onTapGesture {
                                self.showCourseDetail = true
                                self.selectedCourse = course
                            }.listRowSeparator(.hidden)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("Swift Courses")
            }
            .offset(y: self.showCourseDetail ? -150: 0)
            .animation(.easeIn(duration: 0.25), value: 0)
            
            if showCourseDetail{
                BlanketView(color: .gray)
                    .opacity(0.5)
                    .onTapGesture {
                        self.showCourseDetail = false
                    }
                
                self.selectedCourse.map{
                    CourseDetailView(course: $0, isShown: $showCourseDetail)
                        .transition(.move(edge: .bottom))
                }
            }
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

struct BlanketView: View{
    var color: Color
    
    var body: some View{
        VStack{
            Spacer()
        }
        .frame(minWidth: 0,  maxWidth: .infinity,
               maxHeight: .infinity)
        .background(color)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
