//
//  ViewController.swift
//  HomoworkBerk
//
//  Created by Berk doğrulmaz on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    var leagueArray = [League]()
    var choosenLeague : League?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //League init for detailVC
        let bundesliga = League(nameInit: "Bundesliga", descriptionInit: "Bundeliga'da heyecan kaldığı yerden devam ediyor..", imageInit: UIImage(named: "Bundesliga")!)
        let seriA = League(nameInit: "SeriA", descriptionInit: "SeriA'da heyecan kaldığı yerden devam ediyor..", imageInit: UIImage(named: "SeriA")!)
        let laliga = League(nameInit: "Laliga", descriptionInit: "Laliga'da heyecan kaldığı yerden devam ediyor..", imageInit: UIImage(named: "Laliga")!)
        let premierLeague = League(nameInit: "PremierLeague", descriptionInit: "Premier League'de heyecan kaldığı yerden devam ediyor..", imageInit: UIImage(named: "PremierLeague")!)
        let superLeague = League(nameInit: "SuperLeague", descriptionInit: "Super League'de heyecan kaldığı yerden devam ediyor..", imageInit: UIImage(named: "SuperLeague")!)
        
        //Items's append to array
        leagueArray.append(bundesliga)
        leagueArray.append(seriA)
        leagueArray.append(laliga)
        leagueArray.append(premierLeague)
        leagueArray.append(superLeague)
        
        print("League last seems")
              
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagueArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //League name for cell's
        let cell = UITableViewCell()
        cell.textLabel?.text = self.leagueArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.choosenLeague = leagueArray[indexPath.row]
        //Segue
        performSegue(withIdentifier: "toDetailVC", sender: nil)
        
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            
            let vc = segue.destination as? DetailVC
            vc?.choosenLeague = self.choosenLeague
                        
        }
    }
}
