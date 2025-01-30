//
//  File.swift
//  
//
//  Created by Praval Gautam on 30/01/25.
//

import SwiftUI
import AVFoundation
 import UIKit


@available(iOS 17.0, *)
public struct CameraView: View {
    @StateObject private var cameraModel = CameraModel()
    
    public init() {}

    public var body: some View {
        ZStack {
            CameraPreview(session: cameraModel.session)
                .ignoresSafeArea()
            
            // Overlay (e.g., a transparent rectangle)
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 250, height: 250)
                .padding()
            
            VStack {
                Spacer()
                
                if let capturedImage = cameraModel.capturedImage {
                    ConfirmationPopup(image: capturedImage, onSave: {
                        cameraModel.savePhoto()
                    }, onRetake: {
                        cameraModel.resetCamera()
                    })
                } else {
                    CaptureButton(action: {
                        cameraModel.capturePhoto()
                    })
                }
            }
            .padding(.bottom, 50)
        }
        .onAppear {
            cameraModel.checkPermissions()
        }
    }
}
@available(iOS 17.0, *)
struct CaptureButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(.white)
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 2)
                )
        }
    }
}
@available(iOS 17.0, *)
struct ConfirmationPopup: View {
    let image: UIImage
    let onSave: () -> Void
    let onRetake: () -> Void

    var body: some View {
        VStack {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))

            HStack {
                Button(action: onRetake) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }

                Button(action: onSave) {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                }
            }
        }
        .background(Color.black.opacity(0.8))
        .cornerRadius(20)
        .padding()
    }
}

struct CameraPreview: UIViewRepresentable {
    let session: AVCaptureSession

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: UIScreen.main.bounds)
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.frame = view.frame
        view.layer.addSublayer(previewLayer)
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}

