//
//  BountyViewContorllerViewController.swift
//  BountyList
//
//  Created by 김영서 on 2021/05/13.
//

import UIKit

class BountyViewContorllerViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    let nameList = ["brook" , "chopper" , "franky", "luffy", "nami", "robin", "sanji", "zoro"]
    let bountyList = [33000000, 50 , 44000000, 300000000, 16000000, 80000000, 77000000, 120000000]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imageView?.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountLabel.text = "\(bountyList[indexPath.row])"
        return cell
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController 에게 데이터 전달해주는 메서드
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let idx = sender as? Int{
                vc?.name = nameList[idx]
                vc?.bounty = bountyList[idx]
            }
            
        }
        
    }
    
    func tableView(_ tableView : UITableView, didSelectRowAt indexPath : IndexPath){
        print("--> \(indexPath.row)")
        
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
    
}


class ListCell : UITableViewCell {
    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountLabel : UILabel!

}
