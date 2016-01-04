import Cocoa
import ScreenSaver

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {

    var window: NSWindow!
    
    // MARK: - NSApplicationDelegate
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        window.delegate = self
        
        guard let diracDeltaView = DiracDeltaView(frame: NSZeroRect, isPreview: false) else { return }
        
        window.contentView?.addSubview(diracDeltaView)
        diracDeltaView.frame = window.contentView!.bounds
        
        diracDeltaView.startAnimation()
        NSTimer.scheduledTimerWithTimeInterval(diracDeltaView.animationTimeInterval,
            target: diracDeltaView, selector: "animateOneFrame", userInfo: nil, repeats: true)
        
    }
    
    // MARK: - NSWindowDelegate
    
    func windowWillClose(notification: NSNotification) {
        // quit the app if the main window is closed
        NSApplication.sharedApplication().terminate(window)
    }
}

