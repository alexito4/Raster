import AppKit
import SwiftUI

extension View {
    public func rasterizeBitmap(at size: CGSize) ->  NSBitmapImageRep {
        let nsView = NSHostingView(rootView: self.frame(width: size.width, height: size.height))
        nsView.frame.size = size
                
        let bitmapRep = nsView.bitmapImageRepForCachingDisplay(in: nsView.bounds)!
        bitmapRep.size = nsView.bounds.size
        nsView.cacheDisplay(in: nsView.bounds, to: bitmapRep)
        return bitmapRep
    }
    
    public func rasterize(at size: CGSize) -> NSImage {
        let image = NSImage(size: size)
        image.addRepresentation(self.rasterizeBitmap(at: size))
        return image
    }
}
