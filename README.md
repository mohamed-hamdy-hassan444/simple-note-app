# Simple Note App

A clean and lightweight note-taking application built with **Flutter** and state-managed using **Provider**.  
The app allows users to create, edit, delete, and manage notes easily with a simple and intuitive UI.

---

## 📌 Features
- Add new notes (title)
- Delete notes
- View all notes in a clean list
- State management using **Provider**
- Simple and responsive UI



---

## 🚀 Getting Started

### ✔ Prerequisites
You need:
- Flutter SDK (latest stable)
- Android Studio or VS Code
- A real device or emulator

---

## 📥 Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/mohamed-hamdy-hassan444/simple-note-app.git
````

2. Navigate to the project folder:

   ```bash
   cd simple-note-app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the project:

   ```bash
   flutter run
   ```

---

## 📂 Project Structure

```
lib/
 ├── providers/
 │    └── note_provider.dart
 ├── screens/
 │    ├── home_screen.dart
 │    
 ├── widgets/
 │    └── custom_textfield.dart , custom_listview.dart
 └── main.dart
```

---

## 🧠 State Management (Provider)

The app uses **Provider** to:
* Add new notes
* Delete notes
* Notify UI widgets when changes happen

Example:

```dart
Provider.of<NoteProvider>(context, listen: false).addNote(newNote);
```

---

## 🛠 Technologies Used

* Flutter
* Dart
* Provider (State Management)


---

## 📌 How to Use

1. Launch the app
2. Press the **+ button** to add a new note
3. Enter a title and content, then save
5. press delete to remove a note


---

## 🤝 Contributing

Contributions are welcome!
To contribute:

1. Fork the repo
2. Create a new branch:

   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit changes:

   ```bash
   git commit -m "Add your message"
   ```
4. Push to your branch:

   ```bash
   git push origin feature/your-feature
   ```
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 📬 Contact

**Mohamed Hamdy**
GitHub: [https://github.com/mohamed-hamdy-hassan444/simple-note-app](https://github.com/mohamed-hamdy-hassan444/simple-note-app)

```
