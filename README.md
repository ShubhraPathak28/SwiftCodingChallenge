# Gratitude Jar App
A simple and interactive iOS app built using SwiftUI that allows users to reflect on gratitude by saving and viewing notes. The app simulates a "Gratitude Jar" where users can write down things they are thankful for and randomly view saved notes, fostering positivity and mindfulness.

# Features
1. Gratitude Jar Animation: Tap the jar image to trigger a rotation animation and display a randomly selected gratitude note.
2. Save Gratitude Notes: Write notes in a separate "Gratitude Notebook" and save them securely using UserDefaults for persistence.
3. View Random Notes: Randomly fetch and display saved gratitude notes each time the jar is tapped or the app is opened.
4. Simple Navigation: Navigate between the main jar view and the notebook using a clean and intuitive UI powered by NavigationView.

# Technologies Used
1. SwiftUI: For building the app's user interface using declarative syntax.
2. UserDefaults: For local data storage and retrieval of user-generated notes.
3. Animation: Smooth jar rotation effect using SwiftUI’s withAnimation and rotationEffect.
