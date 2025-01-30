


https://github.com/user-attachments/assets/bf3f2cff-a0d3-4f93-9040-fb21514c82c1



# 📸 Atom360CamKit

**A Modern Swift Package for Camera Integration in SwiftUI Apps**

![Divider](https://user-images.githubusercontent.com/26855833/227773219-0d7c9504-6b8d-4a7a-a3e3-ae8a0b140e3e.svg)

## 🌟 Introduction
Atom360CamKit is an elegant Swift package that provides a ready-to-use camera interface with photo capture and saving capabilities. Designed for SwiftUI apps, it offers:

- 📷 Full-screen camera view with overlay
- 🖼️ Photo preview with save/discard options
- 🔄 Seamless Photo Library integration
- 🎨 Simple SwiftUI implementation

![Divider](https://user-images.githubusercontent.com/26855833/227773219-0d7c9504-6b8d-4a7a-a3e3-ae8a0b140e3e.svg)

## 🔐 Permissions Required
Add these entries to your `Info.plist`:

| Permission Type              | Key                                | Example Value                          |
|------------------------------|------------------------------------|----------------------------------------|
| **Camera Access**            | `NSCameraUsageDescription`         | "Required for capturing photos"        |
| **Photo Library Read**       | `NSPhotoLibraryUsageDescription`   | "Needed to access your photo library"  |
| **Photo Library Write**      | `NSPhotoLibraryAddUsageDescription`| "Required to save photos to gallery"   |

```xml
<!-- Example Info.plist entries -->
<key>NSCameraUsageDescription</key>
<string>This app requires camera access to take pictures</string>

<key>NSPhotoLibraryUsageDescription</key>
<string>We need access to browse your photos</string>

<key>NSPhotoLibraryAddUsageDescription</key>
<string>Save your captured moments to the gallery</string>

🛠 Installation
Swift Package Manager
In Xcode, open your project

Navigate to File → Swift Packages → Add Package Dependency

Paste the repository URL:
https://github.com/pravalgautam/Atom360CamKit

Select your preferred version rules


<img width="902" alt="Screenshot 2025-01-31 at 3 39 53 AM" src="https://github.com/user-attachments/assets/369f1ccc-aac4-4d96-b543-7cc8e04778f6" />
🌈 Features
✅ One-Step Integration: Get a working camera in 2 lines of code

🎨 Customizable Overlay: Match your app's branding

📲 Photo Library Integration: Built-in save/delete workflow

🛡 Permission Handling: Automatic camera access management

📱 iOS Optimized: Supports all modern iOS devices

