//
//  ViewController.swift
//  FInal Grade Calculator App
//
//  Created by Diego Gonzalez on 10/11/21.
//

import UIKit
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
class ViewController: UIViewController
{
    @IBOutlet weak var currentGrade: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var desiredGrade: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var finalExamWeight: UILabel!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var box1 = ""
    var box2 = ""
    var box3 = ""
    var myInt1=0
    var myInt2=0
    var myInt3=0
    
    
    
    var myFloat1:Float=0.0
    var myFloat2:Float=0.0
    var myFloat3:Float=0.0
    

    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    
    @IBAction func calculateButton(_ sender: Any)
    {
        box1=textField1.text ?? "0"
        box2=textField2.text ?? "0"
        box3=textField3.text ?? "0"
        myInt1=Int(box1) ?? 0
        myInt2=Int(box2) ?? 0
        myInt3=Int(box3) ?? 0
        
        myFloat1=Float(box1) ?? 0.0
        myFloat2=Float(box2) ?? 0.0
        myFloat3=Float(box3) ?? 0.0
        
        var desiredGrade = myFloat2
        var currentGrade = myFloat1
        var finalExamWeight = myFloat3
        
        var finalExam = (desiredGrade-currentGrade*(1-finalExamWeight/100))/(finalExamWeight/100)
        
        
        resultLabel.text = "\(finalExam)%"
       
        if finalExam>100
        {
            self.view.backgroundColor=UIColor.red
        }
        else
        {
            self.view.backgroundColor=UIColor.green
        }
    }
    @IBAction func resetButton(_ sender: Any)
    {
        textField1.text="0"
        textField2.text="0"
        textField3.text="0"
        resultLabel.text="0"
    }
    

}

