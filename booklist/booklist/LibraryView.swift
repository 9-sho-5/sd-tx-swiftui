import SwiftUI

struct LibraryView: View {
    @State private var favoriteBooks: [BookSummary] = []
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ZStack {
                if favoriteBooks.isEmpty {
                    Text("登録された本がありません")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 0) {
                            ForEach(favoriteBooks, id: \.id) { book in
                                AsyncImage(url: URL(string: book.thumbnail ?? "")) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 4)
                                } placeholder: {
                                    ProgressView()
                                }
                                .padding()
                            }
                        }
                        .padding()
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear {
                favoriteBooks = SwiftDataManager().fetchAll()
            }
        }
    }
}

#Preview {
    LibraryView()
}
