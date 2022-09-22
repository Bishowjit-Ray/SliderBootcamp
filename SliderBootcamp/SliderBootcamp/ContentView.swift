//
//  ContentView.swift
//  SliderBootcamp
//
//  Created by Bishowjit Ray on 18/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: Double = 30
    @State var color: Color = .green
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
                //"\(sliderValue)"
                )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
           // Slider(value: $sliderValue, in: 0...100)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(value: $sliderValue,
                   in: 1...5, step: 1.0,
                   onEditingChanged: { (_) in
                
                    color = .green
             
            },
                   minimumValueLabel: Text("1"), maximumValueLabel: Text("5"), label: {
                Text("Title")
            })
            
        
                .accentColor(Color.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
