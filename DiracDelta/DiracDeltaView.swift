import Cocoa
import ScreenSaver

class DiracDeltaView: ScreenSaverView {

    // MARK: - Init
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        NSColor.greenColor().setFill()
        NSRectFill(dirtyRect)
    }
    
}
