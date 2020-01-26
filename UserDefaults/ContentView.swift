//
//  ContentView.swift
//  UserDefaults
//
//  Created by JFJ on 26/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //@State private var tapCount = 0
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
   
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
            
         UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
