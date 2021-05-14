//
//  DetailViewController.swift
//  BountyList
//
//  Created by 김영서 on 2021/05/14.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountLabel : UILabel!
    
//    var name : String?
//    var bounty : Int?
//
//    var bountyInfo : BountyInfo?
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
        
    func updateUI(){
        if let  bountyInfo = self.viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountLabel.text = "\(bountyInfo.bounty)"
        }
         
           
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}


class DetailViewModel{
    var bountyInfo : BountyInfo?
    
    func update(model : BountyInfo){
        self.bountyInfo = model
    }
}
