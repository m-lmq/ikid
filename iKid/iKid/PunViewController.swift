//
//  ViewController.swift
//  iKid
//
//  Created by Maggie Liang on 4/23/24.
//

import UIKit

class PunViewController: UIViewController {
    
    @IBOutlet weak var JokeLabel: UILabel!
    @IBOutlet weak var SwitchButton: UIButton!
    
    var joke : String = "Why were the Avengers' shirts wrinkled?"
    var punchline : String = "Because, They lost their Iron, Man!"
    var isOpen = false
    var LoadingViewController = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if LoadingViewController {
            LoadingViewController = false
        } else {
            viewLoadSetup()
         }
    }
    
    func viewLoadSetup(){
        JokeLabel.text = joke
        isOpen = false
    }
    

    @IBAction func SwitchTouched(_ sender: Any) {
        if isOpen {
            isOpen = false
            JokeLabel.text = joke
            UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            isOpen = true
            JokeLabel.text = punchline
            UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
}
