//
//  MeView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 20.02.2024.
//

import CoreImage.CIFilterBuiltins
import SwiftUI

struct MeView: View {
    @AppStorage("name") private var name = "Anonymous"
    @AppStorage("emailAddress") private var emailAddress = "you@email.address"
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                    .textContentType(.name)
                    .font(.title)
                
                TextField("Email address", text: $emailAddress)
                    .textContentType(.emailAddress)
                    .font(.title)
                
                Image(uiImage: generateQRCode(from: "\(name)\n\(emailAddress)"))
                    .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .contextMenu {
                        let image = generateQRCode(from: "\(name)\n\(emailAddress)")
                        ShareLink(
                            item: Image(uiImage: image),
                            preview: SharePreview("My QR Code", image: Image(uiImage: image)))
                    }
            }
            .navigationTitle("Your code")
        }
    }
    
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)
        
        if let outputImage = filter.outputImage {
            if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgImage)
            }
        }
        
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}

#Preview {
    MeView()
}
