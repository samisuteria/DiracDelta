import Cocoa
import ScreenSaver

class DiracDeltaView: ScreenSaverView {

    let currentAgeTextField = NSTextField()
    
    // MARK: - Init
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        
        setup()
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup 
    
    private func setup() {
        
    }
    
    private func setupViews() {
        currentAgeTextField.editable = false
        currentAgeTextField.selectable = false
        currentAgeTextField.textColor = .whiteColor()
        currentAgeTextField.font = NSFont(name: "HelveticaNeue-Thin", size: 48)
        
        //make textfield background clear
        currentAgeTextField.bezeled = false
        currentAgeTextField.drawsBackground = false
        
        addSubview(currentAgeTextField)
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        NSColor.turquoiseColor().setFill()
        NSRectFill(dirtyRect)
    }
    
}
