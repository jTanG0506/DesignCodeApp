//
//  ViewController.swift
//  DesignCodeApp
//
//  Created by Jonathan Tang on 04/03/2018.
//  Copyright © 2018 jtang0506. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var deviceImageView: UIImageView!
  @IBOutlet weak var playVisualView: UIVisualEffectView!
  
  @IBAction func playButtonTapped(_ sender: Any) {
    let urlString = "https://player.vimeo.com/external/235468301.hd.mp4?s=e852004d6a46ce569fcf6ef02a7d291ea581358e&profile_id=175"
    
    let url = URL(string: urlString)
    
    if let url = url {
      let player = AVPlayer(url: url)
      let playerController = AVPlayerViewController()
      playerController.player = player
      present(playerController, animated: true, completion: {
        player.play()
      })
    }
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    titleLabel.alpha = 0
    deviceImageView.alpha = 0
    playVisualView.alpha = 0
    
    UIView.animate(withDuration: 1) {
      self.titleLabel.alpha = 1
      self.deviceImageView.alpha = 1
      self.playVisualView.alpha = 1
    }
  }

}

