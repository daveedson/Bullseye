//
//  RoundedViews.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/23/2014 ERA1.
//

import SwiftUI

struct RoundedViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName:systemName)
            .font(.title).foregroundColor(Color("textColor")).frame(width:56.0, height:56.0)
            .overlay(Circle().strokeBorder(Color("ButtonStrokeColor"),lineWidth: 2.0,antialiased: true))
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedViewStroked(systemName:"arrow.counterclockwise")
    }
}


struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName:systemName)
            .font(.title).foregroundColor(Color("ButtonFilledTextColor")).frame(width:56.0, height:56.0).background(Circle().fill(Color("ButtonFilledBackgroundColor")))
       
    }
}


struct Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            RoundedViewStroked(systemName: "arrow.counterclockwise")
            RoundedViewStroked(systemName: "list.dash")
            
        }
    }
}


//struct RoundViews_Previews: PreviewProvider {
//    static var previews: some View {
//    
//        
//    }
//}
