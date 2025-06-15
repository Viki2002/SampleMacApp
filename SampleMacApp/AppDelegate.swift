import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Create the window
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        window.center()
        window.title = "Sample Mac App"
        
        // Create a text label
        let label = NSTextField(frame: NSRect(x: 0, y: 0, width: 200, height: 50))
        label.stringValue = "Hello, AWS CodePipeline!"
        label.isEditable = false
        label.isBezeled = false
        label.drawsBackground = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the window
        window.contentView?.addSubview(label)
        
        // Center the label in the window
        if let contentView = window.contentView {
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            ])
        }
        
        window.makeKeyAndOrderFront(nil)
        self.window = window
    }

    func applicationWillTerminate(_ notification: Notification) {
        // Insert code here to tear down your application
    }
}
