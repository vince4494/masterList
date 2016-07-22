//
//  ViewController.swift
//  Assignment 8
//
//  Created by Vince Zipparro on 3/1/16.
//  Copyright © 2016 Vince Zipparro. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var beerTableView: UITableView!
    
    var beer = [String]()
    var desciption = [String]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection:Int)-> Int
    {
        return 12
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cells = tableView.dequeueReusableCellWithIdentifier("beer", forIndexPath: indexPath) as! CustomTableViewCell
        cells.beerName.text = beer[indexPath.row]
        return cells
        
        
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        beer = ["Stella","Bud Light","Angry Orchard","Green Line","Zombie Dust","Busch Light","Blue Moon","Corona","Lagunitas IPA","312",
        "Matilda", "Budweiser"]
        
        desciption = ["Stella, is a pilsner beer of between 4.8 and 5.2% ABV. It has been brewed in Leuven, Belgium since 1926, although it is also brewed in other locations.",
            "Budweiser Light, Budweiser's flagship light beer with 4.2% ABV and 110 calories per 12 US fl oz (355 mL) serving (1,300 kJ/L).","This crisp and refreshing cider mixes the sweetness of the apples with a subtle dryness for a balanced cider taste. The fresh apple aroma and slightly sweet, ripe apple flavor make this cider hard to resist.","Green Line Pale Ale is a honey-colored, immensely sessionable American pale ale with a pronounced, bright, American hop aroma and citrus flavor. Notes of biscuit and lightly toasted malt create the backbone for Green Line’s pleasant, crisp bitterness.","While it's classified as a Pale Ale, to most palates it has much more in common with a ridiculously tasty IPA. The tropical fruit aromas you can't miss are from the generous amount of Citra hops the beer was brewed with.","Introduced in 1982 as Budweiser Light, Budweiser's flagship light beer with 4.2% ABV and 110 calories per 12 US fl oz (355 mL) serving (1,300 kJ/L).","An unfiltered wheat ale spiced in the Belgian tradition for an uncommonly smooth taste.Gold medalist (white beer) at 1995 World Beer Championships, silver medalist (white beer) at 1996 and 1997 World Beer Championships.", "Corona Extra is the number-one selling beer in Mexico and the leading export brand from Mexico. This pilsener type beer was first brewed in 1925 by Cervecería Modelo, located in Mexico City.", "A well-rounded, highly drinkable IPA. A bit of Caramel Malt barley provides the richness that mellows out the twang of the hops.", "Crisp, bright flavor shines like city lights on Lake Michigan. Hazy and unfiltered, our award-winning Urban Wheat Ale's flavor flows from start to finish.", "Matilda is made with a rare yeast that suggests a fruity and spicy flavor. There is complex maltiness balanced with a profuse amount of hops.", "Budweiser is a 5.0% ABV Adjunct pale lager introduced in 1876 by Adolphus Busch and has become one of the best selling beers in the United States."]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
       
        
        let indexPath : NSIndexPath = beerTableView.indexPathForSelectedRow!
        beerTableView.deselectRowAtIndexPath(indexPath, animated: true)
        let DestViewController = segue.destinationViewController as! beerDesciption
        DestViewController.beerDescription = desciption[indexPath.row]
        
        
        
    }


}

