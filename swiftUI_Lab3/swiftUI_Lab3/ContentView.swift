//
//  ContentView.swift
//  swiftUI_Lab3
//
//  Created by Sara on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    let contentN : Int = 0
    @State var Number : Int = 0

    var body: some View {
    NavigationView {//Task 1: Creating Navigation Views
        VStack {
            HStack{
        Text("Hello !").bold()
        .navigationBarItems( trailing:
       
        Button(action: {
            
         },label: {
             NavigationLink(
                 destination: {
                 second_page(data : "Hello, again !!")//Task 2: Passing Data Between Views
                 },
                 label: {
                 Text("Next")
                 })
             
          })
        )
         
                Text("\(Number)").foregroundColor(Color.red)
            //Task 3: Using @State
            }
            HStack{
            Button(
                action: {
                    Number = 1
                },
                label: {
                    Text("First Button")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(12)
                }
            )
            
                Button(
                    action: {
                        Number = 2
                    },
                    label: {
                        Text("Second Button")
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(Color.gray.opacity(0.3))
                            .foregroundColor(Color.black)
                            .cornerRadius(12)
                    }
                )

           
        }
      }.navigationTitle("Welcome")
    }.onAppear{prepare()}
  }//Body
    
    func prepare(){
        Number = contentN
    }
    
}//Content

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
NavigationView {
 Text("Hello, world!")
   .navigationTitle("Title")
   .navigationBarTitleDisplayMode(.inline)
}
 
 
 NavigationLink(
     destination: {
         Text("Hello, am second view")
      second_page()
     },
     label: {
         Text("See All >")
     }
 )
 */
