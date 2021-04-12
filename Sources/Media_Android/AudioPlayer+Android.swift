import Java
import Foundation
import AndroidMedia
import Media_Common


public class AudioPlayer {
  let url: URL
  var player: MediaPlayer? = nil 
  
  private var listener: MediaPlayerListener? = nil
  
  public required init(url: URL) {
    self.url = url
  }     
}

extension AudioPlayer: AudioPlayerProtocol {
  public func play() {
    self.player = MediaPlayer()
    self.listener = MediaPlayerListener()        
            
    self.player?.setOnPreparedListener(listener: listener)
    self.player?.setDataSource(path: url.absoluteString)
    self.player?.prepareAsync()
  }
}

class MediaPlayerListener: Object, MediaPlayer.OnPreparedListener {  
  public func onPrepared(mp: MediaPlayer?) {
         
    mp?.start();
  }
}