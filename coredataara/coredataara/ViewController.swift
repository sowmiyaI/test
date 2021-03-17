//
//  ViewController.swift
//  coredataara
//
//  Created by apple on 12/11/1942 Saka.
//

import UIKit

import CoreData

class ViewController: UIViewController

{

    var RegList = NSArray()

    @IBOutlet weak var t1: UITextField!

    @IBOutlet weak var t2: UITextField!

    @IBAction func b1(_ sender: Any)

    {

//         GetDataFromDB()

        SaveRecord()

    }

     

    func getContext() -> NSManagedObjectContext

    {

        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        return  appDelegate.persistentContainer.viewContext

    }

    

    func SaveRecord()

        {

            let context = getContext()

            let entity  = NSEntityDescription.entity(forEntityName: "Student", in: context)

            let newUser = NSManagedObject(entity: entity!, insertInto: context)

          

            newUser.setValue(t1.text, forKey: "name")

            newUser.setValue(t2.text, forKey: "password")

           

            do{

                try context.save()

                performSegue(withIdentifier: "LoginSegue", sender: self)

              }

            catch

            {

                print("Error : Failed")

            }

        }

     

    override func viewDidLoad()

    {

        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

}
