//
//  doodleTableViewController.swift
//  productivePuppies
//
//  Created by Lalitha on 01/07/22.
//

import UIKit



import PencilKit
    class doodleTableViewController: UIViewController, PKCanvasViewDelegate, PKToolPickerObserver {

        @IBOutlet weak var pencilFingerButton: UIBarButtonItem!
        @IBOutlet weak var canvasView: PKCanvasView!
        
        let canvasWidth: CGFloat = 768
        let canvasOverScrollHight: CGFloat = 500
        
        var drawing = PKDrawing()
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            canvasView.delegate = self
            canvasView.drawing = drawing
            
            canvasView.alwaysBounceVertical = true
            canvasView.drawingPolicy = .anyInput
            
            if let window = parent?.view.window{
            let toolPicker = PKToolPicker.shared(for: window)
                toolPicker?.setVisible(true, forFirstResponder : canvasView)
                toolPicker?.addObserver(canvasView)
                canvasView.becomeFirstResponder()
            
            }
            
            // Do any additional setup after loading the view.
        }
    }

