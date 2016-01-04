import Cocoa
import ScreenSaver

class DiracDeltaView: ScreenSaverView {

    let currentAgeTextField = NSTextField()
    let spinnerView = SpinnerView()
    
    let diracDelta = DiracDelta()
    
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
        spinnerView.diracDelta = diracDelta
    }
    
    private func setupViews() {
        currentAgeTextField.editable = false
        currentAgeTextField.selectable = false
        currentAgeTextField.textColor = .whiteColor()
        currentAgeTextField.font = NSFont(name: "HelveticaNeue-Thin", size: 48)
        currentAgeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        //make textfield background clear
        currentAgeTextField.bezeled = false
        currentAgeTextField.drawsBackground = false
        
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints
        addSubview(currentAgeTextField)
        currentAgeTextField.centerXAnchor.constraintEqualToAnchor(centerXAnchor).active = true
        currentAgeTextField.centerYAnchor.constraintEqualToAnchor(centerYAnchor).active = true
        
        addSubview(spinnerView)
        spinnerView.heightAnchor.constraintEqualToConstant(50).active = true
        spinnerView.widthAnchor.constraintEqualToConstant(50).active = true
        spinnerView.rightAnchor.constraintEqualToAnchor(currentAgeTextField.leftAnchor, constant: -20).active = true
        spinnerView.centerYAnchor.constraintEqualToAnchor(currentAgeTextField.centerYAnchor).active = true
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        NSColor.turquoiseColor().setFill()
        NSRectFill(dirtyRect)
    }
    
    override func animateOneFrame() {
        diracDelta.currentDate = NSDate()
        currentAgeTextField.stringValue = String(format: "%0.09f", diracDelta.birthdayAge())
        
        needsDisplay = true
    }
}
