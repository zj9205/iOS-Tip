import AVFoundation

// Bundle.main.url
class ViewController: UIViewController, AVAudioPlayerDelegate {
    ...
    
    var audioPlayer: AVAudioPlayer?
    
    ...
    
    let soundUrl = Bundle.main.url(forResource: "note1", withExtension: "wav")
    do {
    audioPlayer = try AVAudioPlayer(contentsOf: soundUrl)
    } catch {
    print(error)
    }
    
    ...
    
    audioPlayer?.play()
    
    ...
    
}

// Bundle.main.path
var player: AVAudioPlayer?

if let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav") {
    let url = URL(fileURLWithPath: path)
    do {
        try player = AVAudioPlayer(contentsOf: url)
        player!.prepareToPlay()
    } catch let error as NSError {
        print(error.description)
    }
} else {
    print("cannot find the audio")
}

player?.play()

