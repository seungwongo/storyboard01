//
//  FBViewController.swift
//  storyboard01
//
//  Created by Seungwon Go on 2017. 11. 29..
//  Copyright © 2017년 ReturnValues. All rights reserved.
//

import UIKit

class FBViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var photoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        profileImageView.layer.cornerRadius = 20
        profileImageView.clipsToBounds = true
        
        let photoButtonImage = UIImage(named:"ic_photo_library_white_2x")!.withRenderingMode(.alwaysTemplate) // use your UIImage here
        photoButton.setImage(photoButtonImage, for: .normal) // assign it to your UIButton
        photoButton.tintColor = UIColor.green
        
//        photoButton.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControlState#>)
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 420
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath) as! PhotoTableViewCell
        
        print("tableView cell!!!!!!!")
        
        cell.photoImageView.image = UIImage(named:"photo")
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension FBViewController
//{
//    override open var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//}

