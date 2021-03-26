//
//  characterListViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/01/24.
//

import UIKit

class characterListViewController: UIViewController {
    var index = 0
    @IBOutlet var aButton: UIButton!
    @IBOutlet var iButton: UIButton!
    @IBOutlet var uButton: UIButton!
    @IBOutlet var eButton: UIButton!
    @IBOutlet var oButton: UIButton!
    @IBOutlet var kaButton: UIButton!
    @IBOutlet var kiButton: UIButton!
    @IBOutlet var kuButton: UIButton!
    @IBOutlet var keButton: UIButton!
    @IBOutlet var koButton: UIButton!
    @IBOutlet var saButton: UIButton!
    @IBOutlet var siButton: UIButton!
    @IBOutlet var suButton: UIButton!
    @IBOutlet var seButton: UIButton!
    @IBOutlet var soButton: UIButton!
    @IBOutlet var taButton: UIButton!
    @IBOutlet var tiButton: UIButton!
    @IBOutlet var tuButton: UIButton!
    @IBOutlet var teButton: UIButton!
    @IBOutlet var toButton: UIButton!
    @IBOutlet var naButton: UIButton!
    @IBOutlet var niButton: UIButton!
    @IBOutlet var nuButton: UIButton!
    @IBOutlet var neButton: UIButton!
    @IBOutlet var noButton: UIButton!
    @IBOutlet var haButton: UIButton!
    @IBOutlet var hiButton: UIButton!
    @IBOutlet var fuButton: UIButton!
    @IBOutlet var heButton: UIButton!
    @IBOutlet var hoButton: UIButton!
    @IBOutlet var maButton: UIButton!
    @IBOutlet var miButton: UIButton!
    @IBOutlet var muButton: UIButton!
    @IBOutlet var meButton: UIButton!
    @IBOutlet var moButton: UIButton!
    @IBOutlet var yaButton: UIButton!
    @IBOutlet var yuButton: UIButton!
    @IBOutlet var yoButton: UIButton!
    @IBOutlet var raButton: UIButton!
    @IBOutlet var riButton: UIButton!
    @IBOutlet var ruButton: UIButton!
    @IBOutlet var reButton: UIButton!
    @IBOutlet var roButton: UIButton!
    @IBOutlet var waButton: UIButton!
    @IBOutlet var woButton: UIButton!
    @IBOutlet var nnButton: UIButton!
    
    let cornerRadius: CGFloat = 30.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        aButton.layer.cornerRadius = cornerRadius
        iButton.layer.cornerRadius = cornerRadius
        uButton.layer.cornerRadius = cornerRadius
        eButton.layer.cornerRadius = cornerRadius
        oButton.layer.cornerRadius = cornerRadius
        kaButton.layer.cornerRadius = cornerRadius
        kiButton.layer.cornerRadius = cornerRadius
        kuButton.layer.cornerRadius = cornerRadius
        keButton.layer.cornerRadius = cornerRadius
        koButton.layer.cornerRadius = cornerRadius
        saButton.layer.cornerRadius = cornerRadius
        siButton.layer.cornerRadius = cornerRadius
        suButton.layer.cornerRadius = cornerRadius
        seButton.layer.cornerRadius = cornerRadius
        soButton.layer.cornerRadius = cornerRadius
        taButton.layer.cornerRadius = cornerRadius
        tiButton.layer.cornerRadius = cornerRadius
        tuButton.layer.cornerRadius = cornerRadius
        teButton.layer.cornerRadius = cornerRadius
        toButton.layer.cornerRadius = cornerRadius
        naButton.layer.cornerRadius = cornerRadius
        niButton.layer.cornerRadius = cornerRadius
        nuButton.layer.cornerRadius = cornerRadius
        neButton.layer.cornerRadius = cornerRadius
        noButton.layer.cornerRadius = cornerRadius
        haButton.layer.cornerRadius = cornerRadius
        hiButton.layer.cornerRadius = cornerRadius
        fuButton.layer.cornerRadius = cornerRadius
        heButton.layer.cornerRadius = cornerRadius
        hoButton.layer.cornerRadius = cornerRadius
        maButton.layer.cornerRadius = cornerRadius
        miButton.layer.cornerRadius = cornerRadius
        muButton.layer.cornerRadius = cornerRadius
        meButton.layer.cornerRadius = cornerRadius
        moButton.layer.cornerRadius = cornerRadius
        yaButton.layer.cornerRadius = cornerRadius
        yuButton.layer.cornerRadius = cornerRadius
        yoButton.layer.cornerRadius = cornerRadius
        raButton.layer.cornerRadius = cornerRadius
        riButton.layer.cornerRadius = cornerRadius
        ruButton.layer.cornerRadius = cornerRadius
        reButton.layer.cornerRadius = cornerRadius
        roButton.layer.cornerRadius = cornerRadius
        waButton.layer.cornerRadius = cornerRadius
        woButton.layer.cornerRadius = cornerRadius
        nnButton.layer.cornerRadius = cornerRadius
        
        
    }
    
    @IBAction func toDetail(sender :UIButton){
        index = sender.tag
        performSegue(withIdentifier: "tochallenge", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! characterDetailViewController
        destination.index = self.index
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
