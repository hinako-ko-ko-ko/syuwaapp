//
//  numberListViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/24.
//

//
//  aisatuDetailViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/29.
//
import UIKit
class numberListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBAction func backbutton(){
        self.navigationController?.popViewController(animated: true)
    }
    
    let array = ["1","2","3","4","5","6","7","8","9","0","100","1000","10000",]
    
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        navigationController?.setNavigationBarHidden(true, animated: false)
        //隠す
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count//表示するセルの数
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! AlphabetCollectionViewCell
        
        
        cell.label.text = array[indexPath.row]
        cell.label.textColor = .black
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       index = indexPath.row
        performSegue(withIdentifier: "totochallenge", sender: self)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "totochallenge") {
            let destination = segue.destination as! numberDetailViewController
            destination.index = self.index
        }
            }//prepareを使って次の画面にindexを渡す
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




   
