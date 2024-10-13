A simple, open-source macOS menu bar application for effortlessly running Python scripts with an extra of motivation.

<img align="center" width="386" alt="Screenshot 2024-10-13 at 19 28 50" src="https://github.com/user-attachments/assets/5b97b3c8-d35d-4e4f-9afb-b96dd2481267">

## Setting Up

1. Clone Repository on XCode
2. On _PythonControler.swift_ update Scripts
   
   ```SwiftUI
   sys.path.append("{/Users/...}/python-automation/python-automation/Scripts")
   ```
   
4. Build the app and locale apps's folder
5. Drag app to Application folder


## Configuration

1. Place your Python scripts in the designated ./Scripts directory on the projects repository.
2. Create a new Button and reorganize to your needs.
   
   ```SwiftUI
   Button(action: {}){
     VStack(spacing: 12) {
     AutomationButton(icon: "arrow.clockwise.square", title: "organize", subtitle: "/Downloads", custom: false)
       .onTapGesture {
          let _ = PythonController().self.runSortDownloads(script: "DownloadsSorter")
       }
    }
     .frame(width: 111, height:  30)
     .padding(12)
     .background {
       RoundedRectangle(cornerRadius: 12, style: .continuous)
         .fill(.ultraThinMaterial)
     }
   }
   .buttonStyle(.plain)
   ``` 
