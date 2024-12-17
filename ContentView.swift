import SwiftUI

struct ContentView: View {
    @State private var jarRotation: Double = 0
    @State private var randomText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("What are you grateful for today?")
                    .font(.title)
                    .padding()
                
                Spacer()
                
                Image("jar")
                    .resizable()
                    .frame(width: 400, height: 400)
                    .rotationEffect(.degrees(jarRotation))
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            self.jarRotation = -15
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                self.jarRotation = 15
                            }
                            // Retrieve and display a random text
                            self.getRandomText()
                        }
                    }
                
                Spacer()
                
                NavigationLink(destination: NotesView()) {
                    Image(systemName: "plus")
                        .font(.title)
                        .padding(.top, 20)
                        .padding(.trailing, 20)
                }
                
                Spacer()
                
                Text("\(randomText)")
                    .padding()
            }
            .navigationBarTitle("Gratitude Jar")
            .onAppear {
                // Retrieve a random text when the view appears
                self.getRandomText()
            }
            .padding()
        }
        .background(Color.white) // Set background color to white for the entire app
    }
    
    private func getRandomText() {
        // Retrieve existing notes from UserDefaults
        let existingNotes = UserDefaults.standard.stringArray(forKey: "userNotes") ?? [String]()
        
        // Select a random note
        if let randomNote = existingNotes.randomElement() {
            self.randomText = randomNote
        } else {
            self.randomText = "No notes available."
        }
    }
}
