//
//  ViewController.swift
//  calculator
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var num1:Double! = nil
    var operation = ""
    var num2:Double! = nil
    var result:Double! = 0.0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLabel.text =  "0"
        num1 = nil
        num2 = nil
        result = 0.0
    }
    
    //    @IBAction func plusOrmiusBTn(_ sender: Any)
    //    {
    //    }
    @IBAction func perceBTn(_ sender: Any)
    {
        operation = "%"
        resultLabel.text = ""
        
    }
    @IBAction func divideBTn(_ sender: Any)
    {
        operation = "/"
        resultLabel.text = ""
        
    }
    @IBAction func multiplyBTn(_ sender: Any)
    {
        operation = "*"
        resultLabel.text = ""
    }
    @IBAction func minusBTn(_ sender: Any)
    {
        operation = "-"
        resultLabel.text = ""
        
    }
    @IBAction func plusBTn(_ sender: Any)
    {
        operation = "+"
        resultLabel.text = ""
        
    }
    @IBAction func equalBTn(_ sender: Any)
    {
        // =
        perform()
        resultLabel.text = String(result)
    }
    
    @IBAction func dotBTn(_ sender: Any)
    {
        if(resultLabel.text == "."){
            resultLabel.text = "."
        }else{
            resultLabel.text = resultLabel.text! + "."
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    
    @IBAction func num0(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "0"
        }else{
            resultLabel.text = resultLabel.text! + "0"
        }
        
        
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    
    @IBAction func num1(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "1"
        }else{
            resultLabel.text = resultLabel.text! + "1"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num2(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "2"
        }else{
            resultLabel.text = resultLabel.text! + "2"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num3(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "3"
        }else{
            resultLabel.text = resultLabel.text! + "3"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num4(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "4"
        }else{
            resultLabel.text = resultLabel.text! + "4"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num5(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "5"
        }else{
            resultLabel.text = resultLabel.text! + "5"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num6(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "6"
        }else{
            resultLabel.text = resultLabel.text! + "6"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num7(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "7"
        }else{
            resultLabel.text = resultLabel.text! + "7"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num8(_ sender: Any)
    { if(resultLabel.text == "0"){
        resultLabel.text = "8"
    }else{
        resultLabel.text = resultLabel.text! + "8"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
    }
    @IBAction func num9(_ sender: Any)
    { if(resultLabel.text == "0"){
        resultLabel.text = "9"
    }else{
        resultLabel.text = resultLabel.text! + "9"
        }
        
        if(num1 == nil){
            num1 = Double(resultLabel.text!)
        } else if (num1 != nil && operation == "" ){
            num1 = Double(resultLabel.text!)
        } else{
            num2 = Double(resultLabel.text!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func perform(){
        
        if(operation == "+"){
            if(num1 == nil || num2 == nil){
                result = 0.0
                return
            }
            result = num1 + num2
        } else if(operation == "-"){
            if(num1 == nil || num2 == nil){
                result = 0.0
                return
            }
            result = num1 - num2
        } else if(operation == "*"){
            if(num1 == nil || num2 == nil){
                result = 0.0
                return
            }
            result = num1 * num2
        } else if(operation == "/"){
            if(num1 == nil || num2 == nil){
                result = 0.0
                return
            }
            result = num1 / num2
        } else if(operation == "%"){
            if(num1 == nil || num2 == nil){
                result = 0.0
                return
            }
            result = num1.truncatingRemainder(dividingBy: num2)
        }
        
        num1 = result
        num2 = nil
        operation = ""
        
        
        
    }
    
}

