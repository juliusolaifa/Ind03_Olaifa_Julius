//
//  TableViewController.swift
//  Ind03_Olaifa_Julius
//
//  Created by Julius Olaifa on 3/6/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let myDataSource: [[(String, String, String)]] = [[
                                               (name: "AL - Alabama", nickname: "\tYellowhammer State", area: "50,744"),
                                               (name: "AK - Alaska", nickname: "\tThe Last Frontier", area: "571,951"),
                                               (name: "AZ - Arizona", nickname: "\tThe Grand Canyon State", area: "113,635"),
                                               (name: "AR - Arkansas", nickname: "\tThe Natural State", area: "52,068"),
                                               (name: "CA - California", nickname: "\tThe Golden State", area: "155,959"),
                                               (name: "CO - Colorado", nickname: "\tThe Contennial State", area: "103,718"),
                                               (name: "CT - Connecticut", nickname: "\tThe Constitution State", area: "4,845"),
                                               (name: "DE - Delaware", nickname: "\tThe First State", area: "1,954"),
                                               (name: "FL - Florida", nickname: "\tThe Sunshine State", area: "53,927"),
                                               (name: "GA - Georgia", nickname: "\tThe Peach State", area: "57,906"),
                                               (name: "HI - Hawaii", nickname: "\tThe Aloha State", area: "6,423"),
                                               (name: "ID - Idaho", nickname: "\tThe Gem State", area: "82,747"),
                                               (name: "IL - Illinois", nickname: "\tPrairie State", area: "55,584"),
                                               (name: "IN - Indiana", nickname: "\tThe Hoosier State", area: "35,867"),
                                               (name: "IA - Iowa", nickname: "\tThe Hawkeye State", area: "55,869"),
                                               (name: "KS - Kansas", nickname: "\tThe Sunflower State", area: "81,815"),
                                               (name: "KY - Kentucky", nickname: "\tThe Bluegrass State", area: "39,728"),
                                               (name: "LA - Louisiana", nickname: "\tThe Pelican State", area: "43,562"),
                                               (name: "ME - Maine", nickname: "\tThe Pine Tree State", area: "30,862"),
                                               (name: "MD - Maryland", nickname: "\tThe Old Line State", area: "9,774"),
                                               (name: "MA - Massachusetts", nickname: "\tThe Bay State", area: "7,840"),
                                               (name: "MI - Michigan", nickname: "\tThe Great Lakes State", area: "56,804"),
                                               (name: "MN - Minnesota", nickname: "\tThe North Star State", area: "79,610"),
                                               (name: "MS - Mississippi", nickname: "\tThe Magnolia State", area: "46,907"),
                                               (name: "MO - Missouri", nickname: "\tThe Show Me State", area: "68,886"),
                                               (name: "MT - Montana", nickname: "\tThe Treasure State", area: "145,552"),
                                               (name: "NE - Nebraska", nickname: "\tThe Cornhusker State", area: "76,872"),
                                               (name: "NV - Nevada", nickname: "\tThe Silver State", area: "109,826"),
                                               (name: "NH - New Hampshire", nickname: "\tThe Granite State", area: "8,968"),
                                               (name: "NJ - New Jersey", nickname: "\tThe Garden State", area: "7,417"),
                                               (name: "NM - New Mexico", nickname: "\tThe Land of Enchantment", area: "121,356"),
                                               (name: "NY - New York", nickname: "\tThe Empire State", area: "47,214"),
                                               (name: "NC - North Carolina", nickname: "\tThe Tar Heel State", area: "48,711"),
                                               (name: "ND - North Dakota", nickname: "\tThe Peace Garden State", area: "68,976"),
                                               (name: "OH - Ohio", nickname: "\tThe Buckeye State", area: "40,948"),
                                               (name: "OK - Oklahoma", nickname: "\tThe Sooner State", area: "68,667"),
                                               (name: "OR - Oregon", nickname: "\tThe Beaver State", area: "95,997"),
                                               (name: "PA - Pennsylvania", nickname: "\tThe Keystone State", area: "44,817"),
                                               (name: "RI - Rhode Island", nickname: "\tThe Ocean State", area: "1,045"),
                                               (name: "SC - South Carolina", nickname: "\tThe Palmetto State", area: "30,109"),
                                               (name: "SD - South Dakota", nickname: "\tMount Rushmore State", area: "75,885"),
                                               (name: "TN - Tennessee", nickname: "\tThe Volunteer State", area: "41,217"),
                                               (name: "TX - Texas", nickname: "\tThe Lone Star State", area: "261,797"),
                                               (name: "UT - Utah", nickname: "\tThe Beehive State", area: "82,144"),
                                               (name: "VT - Vermont", nickname: "\tThe Green Mountain State", area: "9,250"),
                                               (name: "VA - Virginia", nickname: "\tThe Old Dominion State", area: "39,594"),
                                               (name: "WA - Washington", nickname: "\tThe Evergreen State", area: "66,544"),
                                               (name: "WV - West Virginia", nickname: "\tThe Mountain State", area: "24,078"),
                                               (name: "WI - Wisconsin", nickname: "\tThe Badger State", area: "54,310"),
                                               (name: "WY - Wyoming", nickname: "\tThe Equality or Cowboy State", area: "97,100")]]
    
    let sectionHeader = ["States"]

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
        return myDataSource.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myDataSource[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "My Table Cell", for: indexPath)
        
        // Get the data for this cell from the array.
        let cellData: (name: String, nickname: String, area: String) =
            myDataSource[indexPath[0]][indexPath[1]]
        

        // Configure the cell...
        cell.textLabel?.text = cellData.name
        cell.detailTextLabel?.text = cellData.nickname

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let indexPath = tableView.indexPathForSelectedRow!
        let details = segue.destination as! ViewController
        details.name = myDataSource[indexPath[0]][indexPath[1]].0
        details.area = myDataSource[indexPath[0]][indexPath[1]].2
        details.flagImage = UIImage(named: details.name + "-flag.png")!
        details.mapImage = UIImage(named: details.name + "-map.png")!
    }
    

}
