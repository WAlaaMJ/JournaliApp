//
//  ContentView.swift
//  Walaa - Hello World
//
//  Created by Walaa on 28/10/2024.
//

import SwiftUI

struct Splash: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
           
            ZStack {
                
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack {
                        
                        
                        Image("Applogo")
                            .font(.system(size: 80))
                            .foregroundColor(.red)
                        Text("Journali")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white.opacity(0.80))
                        
                        Text("Your thoughts, your story")
                                               .font(.body)
                                               .foregroundColor(.gray)
                                               .padding(.top, 0)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.00
                        }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            Splash()
        }
    }
}
