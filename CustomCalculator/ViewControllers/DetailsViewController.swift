//
//  DetailsViewcController.swift
//  CustomCalculator
//
//  Created by Дмитро  on 01.08.2022.
//

import UIKit



class DetailsViewController:  UIViewController {
    @IBOutlet private weak var carBrandNameLabel: UILabel!
    @IBOutlet private weak var carModelNameLabel: UILabel!
    @IBOutlet private weak var carYearLabel: UILabel!
    @IBOutlet private weak var carEngineLabel: UILabel!
    @IBOutlet private weak var carTotalPriceLabel: UILabel!
    
    var carBrandNameText = ""
    var carModelNameText = ""
    var carYearText = ""
    var carEngineText = ""
    var carTotalPriceText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carBrandNameLabel.text = carBrandNameText
        carModelNameLabel.text = carModelNameText
        carYearLabel.text = carYearText
        carEngineLabel.text = carYearText
        carTotalPriceLabel.text = carYearText
        
    }
    
    
}











//var textlabel: String = ""
//
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    brandCarNameLabel.text = textlabel
//}
