import AppKit
import SwiftUI

// View component
struct PlaylistPreview: View {
    let playlist: Playlist
    let previewData: PlaylistPreviewData
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(previewData.previewImages.prefix(3), id: \.self) { image in
                Image(nsImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .cornerRadius(4)
            }
            
            Text(playlist.name)
                .lineLimit(1)
            
            if previewData.isActive {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
        }
        .frame(height: 35)
    }
} 