//
//  ContentView.swift
//  SegmentedControlSample
//
//  Created by MakeItSimple on 2020/02/20.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectorIndex = 0
    @State private var numbers = ["One", "Two", "Three"]
    
    
    var body: some View {
        VStack {
            // Picker 를 이용하여 데이터 설정후 pickerStyle 로 세그먼트를 생성
            Picker("Numbers", selection: $selectorIndex) {
                ForEach(0 ..< numbers.count) { index in
                    Text(self.numbers[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Selected Index Is \(numbers[selectorIndex])").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
