//
//  feedViewController.swift
//  insta
//
//  Created by Mark Cruz on 3/14/21.
//

import UIKit
import Parse
import AlamofireImage

class feedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    var posts = [PFObject]()
    
   override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className:"Post")
        query.includeKey("author")
        query.limit = 20
        query.order(byDescending: "createdAt")
        
        query.findObjectsInBackground() { (posts, error) in
            if posts != nil {
                self.posts = posts!
                self.tableView.reloadData()
                
            }
        }
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        let post = posts[indexPath.row]
        let user = post["author"] as! PFUser
        cell.username.text = user.username
        cell.comment.text = post["caption"] as? String
        
        let imageFile = post["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        cell.postedImage.af_setImage(withURL: url)
        
        return  cell
    }
    

}
