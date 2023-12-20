//
//  ContentView.swift
//  CoreImageCannyEdgeDetection
//
//  Created by 송재훈 on 12/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var image = UIImage(named: "lena")!
    let cannyEdgeDetector = CannyEdgeDetector()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Image(uiImage: image)
                
                Button {
                    image = cannyEdgeDetector.detectEdges(image)
                } label: {
                    Text("Canny Edge Detect")
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
