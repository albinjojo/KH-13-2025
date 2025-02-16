# Offlearn - Hybrid Learning Platform

Offlearn is an inclusive and scalable educational platform designed to bridge the digital divide, ensuring quality education for both rural and urban students. With a unique hybrid learning model, Offlearn supports group-based learning for rural communities and individual learning for urban students, even with limited or intermittent internet connectivity.

## 🚀 Features

- **Hybrid Learning Model**: Supports both group-based and individual learning.
- **Offline Accessibility**: Enables students in rural areas to access resources with minimal connectivity.
- **Firebase Integration**: Seamless authentication, real-time database, and cloud storage.
- **Gemini API**: AI-powered personalized learning and content recommendations.
- **Flutter & Dart**: Cross-platform mobile app for Android and iOS.
- **Scalable Architecture**: Designed to expand for more users and features in the future.

## 🛠 Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Firebase (Authentication, Firestore, Cloud Functions, Storage)
- **AI Integration**: Google Gemini API
- **Offline Support**: Local database (Hive/SQLite)

## 📦 Installation

### Prerequisites
- Flutter SDK installed ([Download Flutter](https://flutter.dev/docs/get-started/install))
- Firebase setup ([Firebase Console](https://console.firebase.google.com/))
- Gemini API Key ([Google AI Studio](https://ai.google.dev/))

### Steps to Run the Project
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/offlearn.git
   cd offlearn
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Configure Firebase:
   - Create a Firebase project and add the `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) to the `android/app` and `ios/Runner` directories.
4. Set up Gemini API:
   - Add your API key in the `.env` file or within your Dart configuration file.
5. Run the app:
   ```sh
   flutter run
   ```

## 📂 Project Structure
```
Offlearn/
│-- lib/
│   │-- main.dart
│   │-- models/
│   │-- screens/
│   │-- services/
│   │-- widgets/
│-- android/
│-- ios/
│-- assets/
│-- pubspec.yaml
│-- README.md
```

## 🎯 Roadmap
- [ ] AI-powered content curation
- [ ] Multilingual support
- [ ] Enhanced offline capabilities
- [ ] Community-driven learning modules

## 🤝 Contributing
We welcome contributions! Follow these steps:
1. Fork the repository
2. Create a new branch (`feature-new`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-new`)
5. Open a Pull Request

## 📜 License
This project is licensed under the MIT License.

## 📬 Contact
For any queries, reach out via [your email] or open an issue.
