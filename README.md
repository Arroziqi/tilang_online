# Online Traffic Violations Handling App

This Flutter application manages traffic violation tickets online. It features notification of traffic violations, fine payments, input forms, authentication, and education. The application uses Firestore from Firebase, Midtrans for the payment gateway, and Node.js for backend API requests.

## Features

- **Notification of Traffic Violations**: Receive real-time notifications when a traffic violation is recorded.
- **Fine Payments**: Pay traffic fines securely through Midtrans.
- **Input Forms**: Submit necessary information and documents.
- **Authentication**: Secure login and registration.
- **Education**: Access educational content related to traffic rules and regulations.

## Tech Stack

- **Frontend**: Flutter
- **Backend**: Node.js
- **Database**: Firestore (Firebase)
- **Payment Gateway**: Midtrans

## Getting Started

### Prerequisites

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Node.js: [Download](https://nodejs.org/)
- Firebase Project: [Setup Firebase](https://firebase.google.com/)
- Midtrans Account: [Register](https://midtrans.com/)

"If you only want to run the frontend, then you just need to follow the frontend setup steps and don't need to configure Midtrans and Firebase."

### Frontend Setup

1. Clone the frontend repository:
   ```bash
   git clone -b frontend git@github.com:Arroziqi/tilang_online.git frontend
   ```
2. Navigate to the project directory:
   ```bash
   cd frontend
   ```
3. Install the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

### Setup Firebase

1. Create a new Firebase project in the Firebase Console.
2. Add an Android/iOS app to your Firebase project.
3. Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) file and place it in the respective directories in your Flutter project:
   - Android: `android/app`
   - iOS: `ios/Runner`
4. Enable Firestore and Authentication in the Firebase Console.
5. Add your app's SHA-1 key for Android (found in your project settings in the Firebase Console).

### Setup Midtrans

1. Register and log in to your Midtrans account.
2. Set up your project and obtain the client key and server key.
3. Enable the payment methods you wish to use in your app.

### Backend Setup

create a simple request API with node.js or other languages. Follow the documentation of Midtrans for more information.

<!--
1. Clone the backend repository:
   ```bash
   git clone <your-backend-repo-url>
   ```
2. Install the dependencies:
   ```bash
   cd <your-backend-repo-directory>
   npm install
   ```
3. Create a `.env` file in the root directory and add your environment variables:
   ```
   PORT=3000
   FIREBASE_API_KEY=<your-firebase-api-key>
   FIREBASE_AUTH_DOMAIN=<your-firebase-auth-domain>
   FIREBASE_PROJECT_ID=<your-firebase-project-id>
   MIDTRANS_SERVER_KEY=<your-midtrans-server-key>
   MIDTRANS_CLIENT_KEY=<your-midtrans-client-key>
   ```
4. Start the backend server:
   ```bash
   npm start
   ```
-->

<!--
## Usage

1. **Login/Register**: Users can create an account or log in with existing credentials.
2. **Receive Notifications**: Users receive notifications about new traffic violations.
3. **View Violations**: Users can view details of their traffic violations.
4. **Pay Fines**: Users can pay their fines through the integrated Midtrans payment gateway.
5. **Submit Forms**: Users can submit necessary forms and documents.
6. **Access Education**: Users can access educational content about traffic rules and regulations.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.
-->
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
