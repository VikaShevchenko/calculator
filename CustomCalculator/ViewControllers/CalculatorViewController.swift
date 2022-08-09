//
//  ViewController.swift
//  CustomCalculator
//
//  Created by Дмитро  on 01.08.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var carBrandNameTF: UITextField!
    @IBOutlet weak var carModelNameTF: UITextField!
    @IBOutlet weak var carProductionYearTF: UITextField!
    @IBOutlet weak var carPriceTF: UITextField!
    @IBOutlet weak var carCountryShipTF: UITextField!
    @IBOutlet weak var carEngineCapacityTF: UITextField!
    
    
    var costSeaDelivery = 2000.00
    var costLogisticService = 1000.00
    var costLogisticInUsa = 400.00


    override func viewDidLoad() {
        super.viewDidLoad()
        print("vika star")
    }

    
    @IBAction func calculateTaxes(_ sender: UIButton) {
        var costCar = Double(carPriceTF.text!)!
        var auctionTax = 0.02 * costCar
//        print(auctionTax)
        var customTaxes = ((costCar * 0.10) +  calculateEngineCapacity()) * 1.2
        print(customTaxes)

        let resultCost = customTaxes + costSeaDelivery + costLogisticService + costLogisticInUsa + costCar
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultCalculateVC" {
            let detailsVC = segue.destination as! DetailsViewController
            detailsVC.carBrandNameText = carBrandNameTF.text!
            
            detailsVC.carBrandNameText = carModelNameTF.text!
            detailsVC.carEngineText = carEngineCapacityTF.text!
            
            let carTotalPrice = calculateCarTotalSum()
            detailsVC.carTotalPriceText = "\(carTotalPrice)"
            
        }
    }
    

    
        func calculateCarTotalSum() -> Double {
        let costCar = Double(carPriceTF.text!)!
        let customTaxes = ((costCar * 0.10) +  calculateEngineCapacity()) * 1.2
        print(customTaxes)
        
        let resultCost = customTaxes + costSeaDelivery + costLogisticService + costLogisticInUsa + costCar
        
        return resultCost
    }
    
        func calculateEngineCapacity() -> Double {
        let capacityEngine = Double(carEngineCapacityTF.text!)!
        
        switch capacityEngine {
        case 0...1500:
            return 100
        case 1500...3000:
            return 150
        case 3000... :
            return 250
        default:
           break
       
        }
        return 0
    }
    
}


//
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier ==  "resultCalculateVC" {
//        if let detailVC = segue.destination as? DetailsViewController {
//            detailVC.textlabel = brandNameTextField.text!
////                detailVC.configureUI(brandNameText: "ok")
//
////            detailVC.modelNameLabel.text  = modelNameTextField.text!
////            detailVC.engineLabel.text  = engineCapacityTextField.text!
////            detailVC.yearLabel.text = yearProductionTextField.text!
////            detailVC.resultCosLabel.text = "\(calculateTotalSum(with: Double(amountTextLabel.text!)!))"
//        }
//
//    }
//}
