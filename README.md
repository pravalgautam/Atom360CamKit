Introduction
Atom360CamKit is a Swift package that provides a simple camera view with an overlay and functionality for taking and saving photos. Users can press a capture button to take a photo, and then choose to save or discard it through a pop-up dialog.

Permissions Required
To use Atom360CamKit on an iOS device, you must request access to the Camera and Photo Library. Ensure that the following permissions are included in your app's Info.plist to avoid app crashes and ensure privacy compliance:

1. Camera Permission
Key: NSCameraUsageDescription
Purpose: This permission is required to access the device's camera to capture photos.
Description: Add a description explaining why the app needs camera access.
xml
Copy
Edit
<key>NSCameraUsageDescription</key>
<string>This app requires access to your camera to take pictures.</string>
2. Photo Library Permission
Key: NSPhotoLibraryUsageDescription
Purpose: This permission is required to access the user's photo library.
Description: Add a description explaining why the app needs access to the photo library.
xml
Copy
Edit
<key>NSPhotoLibraryUsageDescription</key>
<string>This app requires access to your photo library to save images.</string>
3. Photo Library Add Permission
Key: NSPhotoLibraryAddUsageDescription
Purpose: This permission is needed to save photos taken by the camera to the user's photo library.
Description: Add a description explaining why the app needs permission to save photos to the user's library.
xml
Copy
Edit
<key>NSPhotoLibraryAddUsageDescription</key>
<string>This app needs permission to save photos to your gallery.</string>
Installation
Using Swift Package Manager
Open your Xcode project.
Go to File → Swift Packages → Add Package Dependency.
Paste the URL for the Atom360CamKit repository:
bash
Copy
Edit
https://github.com/your-username/Atom360CamKit
Follow the prompts to complete the integration.
Usage
To use the Atom360CamKit camera view in your app:

Import the library:

swift
Copy
Edit
import Atom360CamKit
Add the CameraView to your SwiftUI view:

swift
Copy
Edit
struct ContentView: View {
    var body: some View {
        CameraView()
            .ignoresSafeArea()
    }
}
Features
Capture Photos: The CameraView allows users to take pictures using the device's camera.
Save or Discard Photos: After capturing a photo, users can either save it to their photo library or discard it.
