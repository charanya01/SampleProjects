//
//  ViewController.swift
//  TableViewWithJSONData
//
//  Created by admin on 20/04/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UISearchBarDelegate{
    
    var fetchedContent=[Content]()

    @IBOutlet var contentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentTableView.dataSource=self
        // Do any additional setup after loading the view.
        parseData()
        searchBar()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func searchBar(){
        let searchBar=UISearchBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        searchBar.delegate=self
        searchBar.showsScopeBar=true
        searchBar.tintColor=UIColor.lightGray
        searchBar.scopeButtonTitles=["UserId","Title"]
        self.contentTableView.tableHeaderView=searchBar
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText=="" {
            parseData()
        }
        else{
            if searchBar.selectedScopeButtonIndex==0{
                fetchedContent=fetchedContent.filter({(content)->Bool in
                    return content.userId.description.contains(searchText)
                })
            }
            else{
                fetchedContent=fetchedContent.filter({(content)->Bool in
                    return content.title.lowercased().contains(searchText.lowercased())
                })
            }
           
        }
        self.contentTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return fetchedContent.count
    }

    
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = contentTableView.dequeueReusableCell(withIdentifier:"cell")
        cell?.textLabel?.text=(fetchedContent[indexPath.row].userId).description
        cell?.detailTextLabel?.text=fetchedContent[indexPath.row].title
        return cell!
    }

    func parseData(){
        
        fetchedContent=[]
        let url="https://jsonplaceholder.typicode.com/posts"
        var request=URLRequest(url: URL(string: url)!)
        request.httpMethod="GET"
        
        let configuration=URLSessionConfiguration.default
        let session=URLSession(configuration: configuration,delegate:nil,delegateQueue: OperationQueue.main)
        
        let task=session.dataTask(with:request){ (data,response,error) in
            
        if(error != nil){
            print("Error")
        }
        else{
            do{
                let fetchedData=try JSONSerialization.jsonObject(with:data!,options:.mutableLeaves) as! NSArray
                
                for eachfetchedContent in fetchedData{
                    let eachContent=eachfetchedContent as! [String:Any]
                    let id=eachContent["userId"] as! Int64
                    let title=eachContent["title"] as! String
                    
                    self.fetchedContent.append(Content(userId:id , title:title))
                }
                self.contentTableView.reloadData()
            }
            catch{
                print("Error 2")
            }
        }
        
    }
    task.resume()


}

}

class Content{
    var userId:Int64
    var title:String
    
    init(userId:Int64,title:String){
        self.userId=userId
        self.title=title
    }
}

