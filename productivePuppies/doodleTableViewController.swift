//
//  doodleTableViewController.swift
//  productivePuppies
//
//  Created by Lalitha on 01/07/22.
//

import UIKit



class Canvas: UIView{
    
    override func draw(_ rect: CGRect) {
        //custom drawing
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else
            {return}
        // here are my lines
        // dummy data
     //   let startPoint = CGPoint(x: 0, y: 0)
       // let endPoint = CGPoint(x: 100, y: 100)
        //context.move(to: startPoint)
       // context.addLine(to: endPoint)
        
        context.setStrokeColor(UIColor.red.cgColor)
        context.setLineWidth(10)
        context.setLineCap(.butt)
        
        lines.forEach { (line) in
            
            for (i,p) in line.enumerated(){
                if i == 0{
                    context.move(to: p)
                }else {
                    context.addLine(to: p)
                }
            }
        }
        
        
        
        context.strokePath()
    }
    // let's ditch thsi
   // var line = [CGPoint]()
    var lines = [[CGPoint]]()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append([CGPoint] ())
    }
    
    // track the finger as we move across screen
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else {return}
        //print(point)
    
        
        guard var lastLine = lines.popLast() else { return }
        lastLine.append(point)
        lines.append(lastLine)
        //var lastLine = lines.last
        //lastLine?.append(point)
      //  line.append(point)
        
        setNeedsDisplay()
    }
}

class doodleTableViewController: UIViewController {
    
    let canvas = Canvas()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(canvas)
        canvas.backgroundColor = .white
        canvas.frame = view.frame
    }


}



