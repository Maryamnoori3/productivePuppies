//
//  booksViewController.swift
//  productivePuppies
//
//  Created by Gelila Solomon on 6/30/22.
//

import UIKit

class booksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hungerGames(_ sender: Any) {
        let shoppingOneURL = URL (string: "https://www.amazon.com/dp/B00YDJSO5M?linkCode=ogi&tag=elle_auto-append-20&ascsubtag=%5Bartid%7C10051.g.38110418%5Bsrc%7C%5Bch%7C%5Blt%7Csale")
        UIApplication.shared.open (shoppingOneURL!)
    }
    
    @IBAction func speak(_ sender: Any) {
        let shoppingTwoURL = URL (string: "https://www.amazon.com/Speak-Laurie-Halse-Anderson/dp/0312674392")
        UIApplication.shared.open(shoppingTwoURL!)
    }
    
    @IBAction func theHateUGive(_ sender: Any) {
        let shoppingThreeURL = URL (string:"https://www.amazon.com/Hate-U-Give-Angie-Thomas/dp/0062498533")
        UIApplication.shared.open(shoppingThreeURL!)
    }
    
    @IBAction func dumplin(_ sender: Any) {
        let shoppingFourURL = URL (string: "https://www.amazon.com/Dumplin-Julie-Murphy/dp/0062327194")
        UIApplication.shared.open(shoppingFourURL!)
    }
    
    @IBAction func annaK(_ sender: Any) {
        let shoppingFiveURL = URL (string: "https://www.amazon.com/Anna-K-Story-Jenny-Lee/dp/1250236436")
        UIApplication.shared.open(shoppingFiveURL!)
    }
    
    @IBAction func theFaultInOurStars(_ sender: Any) {
        let shoppingSixURL = URL (string:"https://www.amazon.com/Fault-Our-Stars-John-Green/dp/014242417X")
        UIApplication.shared.open(shoppingSixURL!)
    }
    
    @IBAction func persepolis(_ sender: Any) {
        let shoppingSevenURL = URL (string: "https://www.amazon.com/Persepolis-Childhood-Pantheon-Graphic-Library/dp/037571457X")
        UIApplication.shared.open(shoppingSevenURL!)
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
