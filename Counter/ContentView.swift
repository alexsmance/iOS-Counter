//
//  ContentView.swift
//  Counter
//
//  Created by Alex Mance on 30/7/20.
//  Copyright © 2020 Alex Mance. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var count = 0
  
  var body: some View {
    VStack() {
      Spacer()
      HStack {
        Spacer()
        Button("-", action: DecreaseCount)
        Spacer()
        Text("\(count)")
        .font(.title)
        Spacer()
        Button("+", action: IncreaseCount)
        Spacer()
      }
      Spacer()
      HStack {
        Button("Reset", action: ResetCount)
      }
    }
  }
  
  func IncreaseCount() {
    count += 1
  }
  
  func DecreaseCount() {
    if count > 0 {
      count = count - 1
    }
  }
  
  func ResetCount() {
    count = 0
  }  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
        .previewDisplayName("iPhone 11 Pro Max")
        
        ContentView()
        .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (2nd generation)"))
        .previewDisplayName("iPad Pro")
      }
    }
}
