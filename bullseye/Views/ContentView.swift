//
//  ContentView.swift
//  bullseye
//
//  Created by stefano cardia on 24/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    
    #warning("questa è una struct non una classe, andrebbe cambiato!")
//    da local
    @State private var game = Game()

    var body: some View {
        VStack {
            Text("🎯🎯🎯\n put the bullseye as close ads you can")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack{
                Text("1")
                    .bold()
//                Slider(value: .constant(50), in: 1.0...100.0)
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                alertIsVisible = true
            }) {
                Text("Tap me")
            }
        }
        .alert("Alert", isPresented: $alertIsVisible) {
            Button("Ok") {
                print("dismiss tapped")
            }
        } message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("The slider's value is \(roundedValue).\n You scored \(game.calculatePoints(sliderValue: roundedValue)) points this round.")

            Text("This is my first pop-up")
        }
    }
}

//codice in basso che crea la preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
        
    }
}



/*
 
 //https://www.kodeco.com/28797163-your-first-ios-swiftui-app-an-app-from-scratch/lessons/12
 
 And finally, if you continue into the next course, Your First iOS and SwiftUI App: Polishing the App, this is what the final version of the code would look like, in Episode 27—right before you learn to create a custom view instead of relying on the alert modifier.
 
 
 .alert(
   "Hello there!",
   isPresented: $alertIsVisible,
   presenting: {
     let roundedValue = Int(sliderValue.rounded())
     return (
       roundedValue,
       game.points(sliderValue: roundedValue)
     )
   } () as (roundedValue: Int, points: Int)
 ) { data in
   Button("Awesome!") {
     game.startNewRound(points: data.points)
   }
 } message: { data in
   Text("The slider's value is \(data.roundedValue).\n" + "You scored \(data.points) points this round.")
 }

 */
