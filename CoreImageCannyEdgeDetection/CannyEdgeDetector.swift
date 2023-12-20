//
//  CannyEdgeDetector.swift
//  CoreImageCannyEdgeDetection
//
//  Created by 송재훈 on 12/21/23.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

class CannyEdgeDetector {
    func detectEdges(_ image: UIImage) -> UIImage {
        let context = CIContext()
        let ciImage = CIImage(image: image)

        let edgeFilter = CIFilter.cannyEdgeDetector()
        edgeFilter.inputImage = ciImage
        
        let cgImage = context.createCGImage(edgeFilter.outputImage!, from: edgeFilter.outputImage!.extent)!
        
        return UIImage(cgImage: cgImage)
    }
}
