import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playClick(_ sender: Any) {
        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let playerVC = AVPlayerViewController()
        playerVC.player = AVPlayer(url: videoURL!)

        self.present(playerVC, animated: true) {
            playerVC.player?.play()
        }
    }
}

