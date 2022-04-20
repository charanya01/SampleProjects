//
//  CafeTableTableViewController.swift
//  Chapter9Exercise
//
//  Created by admin on 20/04/22.
//

import UIKit

class CafeTableTableViewController: UITableViewController {
    
    var cafeNames=["Berkeley Cafe","Black Cafe","Black Ring Coffee","Camber Coffee","Coffee Shop","Friends Cafe","Hard Rock Cafe","Hop & Stork Cafe","La Mo Cafe","La Perla Cafe","Mall Cafe","Nuare Cafe","Outpost Cafe","Pink Lane Cafe","Sheep Cafe","the Good Life Cafe","Think Coffee"]
    
    var cafeImages=["berkeleyCafe","blackCoffee","blackRingCoffee","camberCoffee","coffeeShop","friendsCafe","hardRockCafe","hopStorkCoffee","laMoCafe","laPerlaCafe","mallCafe","nuareCoffee","outpostCoffee","pinkLaneCoffee","sheepCoffee","theGoodLifeCoffee","thinkCoffee"]
    var cafeLocations=["Raleigh","Kiev","Long Beach","Newcastle","Alberta","New York","Paris","Utrecht","Turlock","Caba","Hong Kong","Kiev","Nottingham","Newcastle","Londres","Moudon","New York"]
    
    var cafeTypes=["Cosy","Classy","Cool","Cosy","Classy","Cool","Cosy","Classy","Cool","Cozy","Classy","Cool","Cozy","Classy","Cool","Cozy","Classy"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cafeNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CafeTableViewCell

        // Configure the cell...
        cell.nameLabel.text=cafeNames[indexPath.row]
        cell.locationLabel.text=cafeLocations[indexPath.row]
        cell.typeLAbel.text=cafeTypes[indexPath.row]
        cell.thumbnailImageView.image=UIImage(named: cafeImages[indexPath.row])
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
