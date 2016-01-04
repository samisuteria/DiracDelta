import Cocoa

class SpinnerView: NSView {

    var diracDelta: DiracDelta!
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        let center = NSPoint(x: dirtyRect.midX, y: dirtyRect.midY)
        let radius = dirtyRect.height / 2.5 // since line width > 1, the outside circile needs to fit inside the frame 
        let lineWidth: CGFloat = 6
        
        let secondsCount = diracDelta.secondsCounter()
        let fillingSpinner = floor(secondsCount % 2) == 0
        
        let backgroundPath = NSBezierPath()
        let indicatorPath = NSBezierPath()
        
        // Draw Graphics
        let context = window?.graphicsContext
        NSGraphicsContext.setCurrentContext(context)
        
        backgroundPath.appendBezierPathWithArcWithCenter(center, radius: radius, startAngle: 0, endAngle: 360)
        NSColor.midnightBlueColor().setStroke()
        backgroundPath.lineWidth = lineWidth
        backgroundPath.stroke()
        
        let startAngle: CGFloat = 90
        let endAngle: CGFloat = CGFloat(secondsCount % 1) * -360 + 90
        
        indicatorPath.appendBezierPathWithArcWithCenter(center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: fillingSpinner)
        
        NSColor.whiteColor().setStroke()
        indicatorPath.lineWidth = lineWidth
        indicatorPath.stroke()
        
        context?.flushGraphics()
        
    }
    
}
