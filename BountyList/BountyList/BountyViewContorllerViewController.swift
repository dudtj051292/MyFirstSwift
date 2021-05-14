//
//  BountyViewContorllerViewController.swift
//  BountyList
//
//  Created by 김영서 on 2021/05/13.
//

import UIKit

class BountyViewContorllerViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
   
    let viewModel = BountyViewModel()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBounrtInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        cell.update(model: viewModel.bountyInfo(at: indexPath.row))
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
                
                vc?.viewModel.update(model: viewModel.bountyInfo(at: idx))
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
    func update( model : BountyInfo){
        self.imageView?.image = model.image
        self.nameLabel.text = model.name
        self.bountLabel.text = "\(model.bounty)"
    }
}



class BountyViewModel{
    let bountyInfoList : [BountyInfo] = [
        BountyInfo(name: "brook"  , bounty: 33000000)
      , BountyInfo(name: "chopper", bounty: 50)
      , BountyInfo(name: "franky" , bounty: 44000000)
      , BountyInfo(name: "luffy"  , bounty: 3000000000)
      , BountyInfo(name: "nami"   , bounty: 16000000)
      , BountyInfo(name: "robin"  , bounty: 80000000)
      , BountyInfo(name: "sanji"  , bounty: 77000000)
      , BountyInfo(name: "zoro"   , bounty: 120000000)
    ]
    var numOfBounrtInfoList :Int {
        return bountyInfoList.count
    }
    func bountyInfo(at index : Int) -> BountyInfo{
        return bountyInfoList[index]
    }
    
}
