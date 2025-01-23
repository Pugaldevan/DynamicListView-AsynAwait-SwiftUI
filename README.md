# Disney Characters App

A SwiftUI application that displays a list of Disney characters fetched from an API. The app supports navigation to detailed views for each character and includes error handling and smooth UI rendering.

---

## Features

- Fetch Disney characters from the [Disney API](https://disneyapi.dev/).
- Display characters in a list with images, names, and navigation to details.
- Error handling for invalid URLs, data, or responses.
- Responsive and visually appealing UI built with **SwiftUI**.
- Asynchronous data fetching with **Combine** or **async/await**.
- Modular and reusable code structure.

---

## Project Structure

```plaintext
DynamicListViewAsynAwait/
├── DDynamicListViewAsynAwaitApp/         # Main app folder
│   ├── Models/                  # Contains data models
│   │   ├── DisneyModel.swift    # Model representing API response
│   │   ├── DisneyCharacter.swift # Represents a Disney character
│   ├── ViewModels/              # Contains app ViewModels
│   │   ├── DisneyViewModel.swift # ViewModel for fetching and managing data
│   ├── Views/                   # Contains all SwiftUI views
│   │   ├── DisneyView.swift     # Main entry point with List and ErrorHandler
│   │   ├── DisneyListView.swift # List view for displaying characters
│   │   ├── DisneyErrorHandlerView.swift # Error handling UI
│   │   ├── DisneyDetailsView.swift # Detail view for character details
│   │   ├── DishneyCharacterRow.swift # Row view for displaying a character
│   ├── Constants/               # Centralized constants for strings
│   │   ├── Constants.swift      # Holds all static strings used in the app
│   ├── Services/                # API Service layer
│   │   ├── Webservice.swift     # API call implementation
│   ├── Assets.xcassets/         # Contains app icons and other assets
├── README.md                    # Documentation for the project
├── DisneyCharactersApp.xcodeproj # Xcode project file

```
---


## Installation & Setup
Xcode 14+.

iOS 16+.

Swift 5.7+.

---

## Steps to Run
1. Clone the repository:

```
git clone https://github.com/your-username/DynamicListViewAsynAwait.git
cd DynamicListView-AsynAwait-SwiftUI

```
---

2. Open the project in Xcode:
   
```
   DynamicListViewAsynAwait.xcodeproj
```
---

3. Build and run the app on a simulator or a physical device.

---

## Screenshots

#### Home View
![Simulator Screenshot - iPhone 16 Pro - 2025-01-23 at 00 28 22](https://github.com/user-attachments/assets/af18fca8-4066-4025-8ffa-e33fb2ec1d20)

---

### Detail View
![Simulator Screenshot - iPhone 16 Pro - 2025-01-23 at 08 22 57](https://github.com/user-attachments/assets/40277d67-b253-48e0-a5ae-4e6976057ad4)

---

## API Integration
The app uses the Disney API to fetch character data. Below are the details:

Endpoint: https://api.disneyapi.dev/character

Response: JSON 

```

{
  "data": [
    {
      "_id": "1234",
      "name": "Mickey Mouse",
      "imageUrl": "https://example.com/image.png"
    }
  ]
}

```
---

## Error Handling

The app handles the following error cases:

Invalid URL: When the API URL is malformed or empty.

Invalid Response: If the HTTP response status is not 200.

Invalid Data: If the data cannot be parsed into the model.

Alerts are displayed to inform the user of any issues.

---

## Contributing
Contributions are welcome! Follow these steps to contribute:

Fork the repository.

Create a new feature branch: git checkout -b feature-name.

Commit your changes: git commit -m "Add feature".

Push to the branch: git push origin feature-name.

Create a pull request.

---

#### Thank you! 



