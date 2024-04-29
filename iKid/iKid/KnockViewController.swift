//
//  KnockViewController.swift
//  iKid
//
//  Created by Maggie Liang on 4/28/24.
//

import UIKit

class KnockViewController: UIViewController {
    
    @IBOutlet weak var JokeLabel: UILabel!
    @IBOutlet weak var NextPageButton: UIButton!
    
    var knock: [String] = ["Knock, Knock.", "Who's there?", "Woo.", "Woo who?", "Woo who the sound of the police!"]
    var buttonCount = 1
    var isLoadingViewController = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if isLoadingViewController {
            isLoadingViewController = false
        } else {
            viewLoadSetup()
         }
    }

    func viewLoadSetup(){
        JokeLabel.text = knock[0]
        NextPageButton.setTitle("Next", for: .normal)
    }
    
    @IBAction func NextPushed(_ sender: Any) {
        buttonCount += 1

        switch buttonCount {
        case 1:
            JokeLabel.text = knock[0]
            NextPageButton.setTitle("Next", for: .normal)

        case 2:
            JokeLabel.text = knock[1]

        case 3:
            JokeLabel.text = knock[2]
            
        case 4:
            JokeLabel.text = knock[3]
            
        case 5:
            JokeLabel.text = knock[4]
            buttonCount = 0
            NextPageButton.setTitle("Back", for: .normal)
            

        default:
            JokeLabel.text = knock[0]
            NextPageButton.setTitle("Next", for: .normal)
        }
        
        UIView.transition(with: self.view, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
}
