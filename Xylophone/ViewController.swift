import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sound: sender.currentTitle)
        sender.alpha = 0.6
        let timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true, block: { timer in
            sender.alpha = 1
        })
    }
    
    func playSound(sound: String!) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
