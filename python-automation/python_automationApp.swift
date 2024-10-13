//
//  python-automation
//
//  Created by Angel Rodriguez Moran on 13/10/24.
//



import SwiftUI

@main
struct python_automationApp: App {
    @StateObject private var viewModel = QuoteViewModel()
    
    var body: some Scene {
        MenuBarExtra("auto-py", systemImage: "circle") {
            QuoteControlCentreView()
                .environmentObject(viewModel)
                .onAppear {
                    viewModel.fetchQuote()
                }
                .frame(width: 300)
                .clipped()
                .background {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(.ultraThinMaterial)
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .center)
                }
                .padding(12)
                
            AutomationsControlCentreView()
                
        }
        .menuBarExtraStyle(.window)
        
    }
    
    
    
    
    
    
    @ViewBuilder
    func AutomationsControlCentreView() -> some View {
        VStack(alignment: .leading){
            HStack{
                Button(action: {}){
                    VStack(spacing: 12) {
                        AutomationButton(icon: "arrow.clockwise.square", title: "organize", subtitle: "/Downloads", custom: false)
                            .onTapGesture {
                                let _ = PythonController().self.runSortDownloads()
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
            }
            .padding([.horizontal], 12)
            .padding([.bottom, .top], 3)
            
            
            
        }
        .padding([.top], -20)
        .padding([.bottom, .top], 12)
        .frame(maxWidth: .infinity, alignment: .leading)
  
    }
    
    
    
    @ViewBuilder
    func AutomationButton(icon: String, title: String, subtitle: String, custom: Bool) -> some View {
        HStack(spacing: 5) {
            if custom {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .white)
            }else{
                Image(systemName: icon)
                    .font(.largeTitle)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .orange)
            }
            
            
            VStack(alignment: .leading, spacing: 1) {
                Text(title)
                    .font(.callout)
                    .foregroundStyle(.primary)
                
                Text(subtitle)
                    .font(.caption2)
                    .foregroundStyle(.primary)
                    .opacity(0.7)
                    
                
            }
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
}

struct QuoteControlCentreView: View {
    @EnvironmentObject var viewModel: QuoteViewModel
    
    var body: some View {
        VStack {
            if let quote = viewModel.quote {
                Text(quote.text)
                    .font(.system(size: 12))
                    .padding(10)
                    
                Text("- \(quote.author)")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
                    .padding([.top], -10)
                    .padding([.bottom], 10)
                    
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            } else {
                Text("Loading...")
                    .font(.title)
                    .padding()
            }
        }
        
    }
}







