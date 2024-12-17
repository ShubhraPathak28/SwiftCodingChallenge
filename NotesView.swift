import SwiftUI

struct NotesView: View {
    @State private var userInput: String = ""
    
    var body: some View {
        VStack {
            TextField("Write anything...", text: $userInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            Button(action: {
                // Save the user input to UserDefaults
                saveToUserDefaults()
            }) {
                Text("Save")
                    .font(.title)
                    .padding()
            }
        }
        .padding()
        .navigationBarTitle("Gratitude Notebook")
    }
    
    private func saveToUserDefaults() {
        // Ensure the user input is not empty before saving
        guard !userInput.isEmpty else {
            return
        }
        
        // Retrieve existing notes from UserDefaults
        var existingNotes = UserDefaults.standard.stringArray(forKey: "userNotes") ?? [String]()
        
        // Append the new user input
        existingNotes.append(userInput)
        
        // Save the updated array to UserDefaults
        UserDefaults.standard.set(existingNotes, forKey: "userNotes")
        
        // Clear the input field after saving
        userInput = ""
    }
}
