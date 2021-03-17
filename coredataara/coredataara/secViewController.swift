//
//  secViewController.swift
//  coredataara
//
//  Created by apple on 14/11/1942 Saka.
//

import UIKit
import CoreData

class secViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var x = 0 
    func getContext() -> NSManagedObjectContext
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }

    func fetchRecord()
    {
        let context = getContext()

        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        do{

            RegList = try context.fetch(fetchRequest) as! [NSManagedObject]
        }
        catch{
            print("error")
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int

    {

        return RegList.count

    }

    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell

    {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let regis = RegList[indexPath.row]
        cell.lable1.text = "\(regis) "
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
          return 150
    }
    @IBOutlet weak var table: UITableView!
    var RegList : [NSManagedObject] = []
    override func viewDidLoad()
    {
        fetchRecord()
        super.viewDidLoad()
    // Do any additional setup after loading the view.
    }
}
