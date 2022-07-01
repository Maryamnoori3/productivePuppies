//
//  snacksViewController.swift
//  productivePuppies
//
//  Created by Gelila Solomon on 6/30/22.
//

import UIKit

class snacksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bananas(_ sender: Any) {
        let foodOneURL = URL (string: "https://www.allrecipes.com/recipe/92486/grilled-peanut-butter-and-banana-sandwich/")
        UIApplication.shared.open (foodOneURL!)
    }
    
    @IBAction func greek(_ sender: Any) {
        let foodTwoURL = URL (string: "https://www.jaroflemons.com/granola-breakfast-bowl/")
        UIApplication.shared.open (foodTwoURL!)
    }
    
    @IBAction func ice(_ sender: Any) {
        let foodThreeURL = URL (string: "https://www.foodnetwork.com/recipes/food-network-kitchen/frozen-fruit-smoothies-recipe-1914927")
        UIApplication.shared.open (foodThreeURL!)
    }
    
    @IBAction func energy(_ sender: Any) {
        let foodFourURL = URL (string: "https://www.allrecipes.com/recipe/239969/no-bake-energy-bites/")
        UIApplication.shared.open (foodFourURL!)
    }
    
    
   
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
