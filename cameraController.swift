//
//  ViewController.swift
//  picture
//
//  Created by 中井日向子 on 2021/09/21.
//

import UIKit
import AVFoundation
import Vision
import CoreML

class cameraController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {

    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!

    var ciImage: CIImage?
    var captureLayer: AVCaptureVideoPreviewLayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCamera()
        navigationController?.setNavigationBarHidden(true, animated: false)
        //隠す
    }

    override func viewDidLayoutSubviews() {
        captureLayer?.frame = cameraView.bounds
    }

    func setupCamera() {
        let session = AVCaptureSession()
        captureLayer = AVCaptureVideoPreviewLayer(session: session)
        cameraView.layer.addSublayer(captureLayer!)

        guard let device = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: device) else { return }
        let output = AVCaptureVideoDataOutput()
        output.setSampleBufferDelegate(self, queue: DispatchQueue(label: "camera"))
        session.addInput(input)
        session.addOutput(output)
        session.startRunning()
    }

    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if connection.videoOrientation != .portrait {
            connection.videoOrientation = .portrait
            return
        }
        guard let buffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        ciImage = CIImage(cvImageBuffer: buffer)
        let context:CIContext = CIContext.init(options: nil)
        let cgImage:CGImage = context.createCGImage(ciImage!, from: ciImage!.extent)!
            let image:UIImage = UIImage.init(cgImage: cgImage)
        DispatchQueue.main.async { [self] in
           faceImageView.image = image
        }
        detect(image: ciImage!)
    }

    func faceDetection(_ buffer: CVImageBuffer) {
        let request = VNDetectFaceRectanglesRequest { (request, error) in
            guard let results = request.results as? [VNFaceObservation] else { return }
            if let image = self.ciImage, let result = results.first {
                let face = self.getFaceCGImage(image: image, face: result)
                if let cg = face {
                    self.showPreview(cgImage: cg)
                    self.scanImage(cgImage: cg)
                }
            }
        }

        let handler = VNImageRequestHandler(cvPixelBuffer: buffer, options: [:])
        try? handler.perform([request])
    }

    func getFaceCGImage(image: CIImage, face: VNFaceObservation) -> CGImage? {
        let imageSize = image.extent.size

        let box = face.boundingBox.scaledForCropping(to: imageSize)
        guard image.extent.contains(box) else {
            return nil
        }

        let size = CGFloat(300.0)

        let transform = CGAffineTransform(
            scaleX: size / box.size.width,
            y: size / box.size.height
        )
        let faceImage = image.cropped(to: box).transformed(by: transform)

        let ctx = CIContext()
        guard let cgImage = ctx.createCGImage(faceImage, from: faceImage.extent) else {
            assertionFailure()
            return nil
        }
        return cgImage
    }

    private func showPreview(cgImage: CGImage) {
        let uiImage = UIImage(cgImage: cgImage)
        DispatchQueue.main.async {
            self.faceImageView.image = uiImage
        }
    }

    func scanImage(cgImage: CGImage) {
        let image = CIImage(cgImage: cgImage)

        guard let model = try? VNCoreMLModel(for: MyImageClassifier_2().model) else { return }
        let request = VNCoreMLRequest(model: model) { request, error in
            guard let results = request.results as? [VNClassificationObservation] else { return }
            guard let mostConfidentResult = results.first else { return }

            DispatchQueue.main.async {
                self.resultLabel.text = mostConfidentResult.identifier
            }
        }
        let requestHandler = VNImageRequestHandler(ciImage: image, options: [:])
        try? requestHandler.perform([request])
    }
    func detect(image: CIImage) {
            guard let model = try? VNCoreMLModel(for: MyImageClassifier_2().model) else {
                fatalError("Loading CoreML Model Failed")
            }

            let request = VNCoreMLRequest(model: model) { (request, error) in
                guard let results = request.results as? [VNClassificationObservation] else {
                    fatalError("Model failed to process image")
                }

                if let firstResult = results.first {
                    self.resultLabel.text = firstResult.identifier
                }
            }

            let handler = VNImageRequestHandler(ciImage: image)

            do {
                try handler.perform([request])
            } catch {
                print(error)
            }
        }
}


extension CGRect {
    func scaledForCropping(to size: CGSize) -> CGRect {
        return CGRect(
            x: self.origin.x * size.width,
            y: self.origin.y * size.height,
            width: (self.size.width * size.width),
            height: (self.size.height * size.height)
        )
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


