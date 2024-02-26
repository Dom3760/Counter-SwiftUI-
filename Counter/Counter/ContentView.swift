//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        //putting things in a vertical stack
        VStack
        {
            //puts text that tells what the buttons do and the current count
            Text("Click the buttons below to change the counter")
            Text("\(count)")
                //padding that spaces out the buttons
                .padding()
        }
        //horizontal buttons that put the buttons next to one another.
        HStack
        {
            //button that says "increment" and then launches the increase function
            Button("Increment", action: increase)
                //styling to the button that adds padding, background color, text color, and corner rounding
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            //button that says "decrement" and then launches the decrease function
            Button("Decrement", action: decrease)
            //styling to the button that adds padding, background color, text color, and corner rounding
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
    //increase function will increase the count by one
    func increase()
    {
        //if the count is equal to 50 then return
        if count == 50
        {
            return
        }
        //else if the count is below 50 then add 1
        else
        {
            count += 1
        }
    }
    //decrease function will decrease the count
    func decrease()
    {
        // if the count is equal to 0 then it will return
        if count == 0
        {
            return
        }
        //else if the count is above 0 then it will subtract 1
        else
        {
            count -= 1
        }
        
    }
}

#Preview {
    ContentView()
}
