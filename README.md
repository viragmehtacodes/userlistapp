# User List App

A simple Flutter application that displays a list of users fetched from a public API. The app demonstrates API integration, state management, error handling, and a clean, user-friendly interface.

**Features**
User List: Displays a list of users with their names and email addresses.
Search Functionality: Filter users by name in real-time using a search bar.
Pull-to-Refresh: Refresh the user list by swiping down.
Detail Screen: Tap on a user to view detailed information.
Loading Indicator: Shows a circular progress indicator while fetching data.
Error Handling: Displays appropriate error messages if the API request fails

**Technologies**
Flutter: Latest stable version
State Management: Provider package
HTTP Requests: http package for API calls

**Project Structure**+

user_list_app/
├── lib/
│   ├── main.dart
│   ├── models/
│   │   └── user.dart
│   ├── providers/
│   │   └── user_provider.dart
│   ├── screens/
│   │   ├── user_detail_screen.dart
│   │   └── user_list_screen.dart
│   └── widgets/
│       ├── user_list_tile.dart
│       └── error_widget.dart
└── pubspec.yaml

**Future Improvements**
Pagination: Implement pagination to load user data in chunks for better performance.
Offline Support: Add local storage to cache user data for offline access.
Enhanced Search: Add options to search by email or other fields.
