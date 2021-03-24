import Foundation

public struct AudioPlayer {
  public let url: URL
  
  public init(contentsOf url: URL) {
    self.url = url
  }
}

