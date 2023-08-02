//
//  second_page.swift
//  swiftUI_Lab3
//
//  Created by Sara on 01/08/2023.
//

import SwiftUI

struct second_page: View {
    var data : String = "?"
    var body: some View {
      
        Text(data).bold()
    }
}

struct second_page_Previews: PreviewProvider {
    static var previews: some View {
        second_page()
    }
}
