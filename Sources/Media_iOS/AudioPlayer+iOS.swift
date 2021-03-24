import Media_Common
import AVFoundation

fileprivate var audioPlayer: AVAudioPlayer!

public extension AudioPlayer {
  func play() {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: self.url)
      audioPlayer.prepareToPlay()
      audioPlayer.play()

    } catch let error {
      print(error.localizedDescription)
    }
  }
}