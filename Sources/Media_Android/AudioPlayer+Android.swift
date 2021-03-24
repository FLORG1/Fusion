import Java
import AndroidMedia

import Media_Common

private var audioPlayer: MediaPlayer?

extension AudioPlayer {
  public func play() {
    audioPlayer = MediaPlayer()
    audioPlayer?.setDataSource(path: self.url.absoluteString)
    
    if let audioPlayer = audioPlayer, !audioPlayer.isPlaying() {    
      audioPlayer.prepare()
      audioPlayer.start()
    
    } else {
      print("Could not start")
    }
  }
}
