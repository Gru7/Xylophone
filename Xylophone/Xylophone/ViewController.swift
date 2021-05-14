//
//  ViewController.swift
//  Xylophone
//
//  Created by Guseyn on 15/04/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
//        print(sender.title(for: .normal))
//        print(sender.titleLabel?.text)
        playSound(nameOfMusic: sender.currentTitle!)
        sender.alpha=0.5
//        UIView.animate(withDuration: 2) {
//                sender.alpha = 1
//            }
        //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
             //Bring's sender's opacity back up to fully opaque.
             sender.alpha = 1.0
         }
    }
    
    func playSound(nameOfMusic:String) {
            let url = Bundle.main.url(forResource: nameOfMusic, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

    

}

