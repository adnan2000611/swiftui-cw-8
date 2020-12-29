//
//  ContentView.swift
//  thkr
//
//  Created by Mac on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var counters = [0, 0, 0]
    @State var labels = ["استغفر الله العظيم" , "سبحان الله وبحمده", "الحمدالله"]
    var body: some View {
        VStack(alignment: .trailing){
            ThkrViewButton(counter: $counters[0], label: labels[0])
            ThkrViewButton(counter: $counters[1], label: labels[1])
            ThkrViewButton(counter: $counters[2], label: labels[2])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThkrViewButton: View {
    
    @Binding var counter : Int
    let label : String
    var body: some View {
        HStack{
            Text(label).font(.largeTitle)
            Button(action: {
                counter += 1
            }, label: {
                Text("\(counter)").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(Circle())
                    .padding()
                
            })
            
        }
    }
}
