# Clean Archi Bookly
This application is designed to help learn Clean Architecture in Flutter.

## Clean Architecture Overview
The following diagram illustrates the architecture:

<div style="text-align: center;">
<img src="Clean-Architecture-Flutter-Diagram.webp" alt="Beautiful Landscape" width="400" height="400">
</div>

## Architecture Layers 
### 1. Presentation Layer
This layer is responsible for UI and user interaction.
- Views/ -> Widgets/: UI components.
- Persentation Logic Holders (managers): Handles state management (e.g., Bloc, any other state management library).

### Core

The core directory contains shared utilities and functionalities.
- utils/: General utility functions.
- assets
- styles
- widgets/: Reusable Shared UI components.
- errors/: Error handling utilities.
      
### 2. Domain Layer 
Defines the core business logic and rules of the application.
- Entities: Represent the data model displayed in the UI.
- Repositories: Implement the repository pattern.
  - Uses an abstract class (e.g., HomeRepo) and its concrete implementations.
- Use Cases: Encapsulate application logic.
  - Defines user actions (e.g., login, fetch books).
  - Ensures single responsibility principle.

### 3. Data Layer 
- Models: Data structures used for API communication and local storage.

## Error Handling with Try-Catch
- Manually handling exceptions can be error-prone.
### So a structured approach ensures exceptions are caught and processed correctly:
- Using Dartz (functional programming library) helps restrict outcomes:
  - Defines explicit success and failure cases.
  - Improves reliability and error handling.


# Overall Clean Architechture Structure
```bash
📦 lib/
 ┣ 📂 core/                
 ┃ ┣ 📂 utils/             
 ┃ ┣ 📂 errors/            
 ┃ ┣ 📂 network/           
 ┃ ┗ 📂 usecases/          # Base use case classes  
 ┣ 📂 features/             # Each feature is a separate module  
 ┃ ┣ 📂 feature_name/      
 ┃ ┃ ┣ 📂 presentation/    # UI layer (widgets, screens, state management)
 ┃ ┃ ┃ ┣ 📂 manager/          # For BLoC/Cubit state management 
 ┃ ┃ ┃ ┣ 📂 views/         # Screens/pages for the feature
 ┃ ┃ ┃ ┗ 📂 widgets/       # Reusable UI components  
 ┃ ┃ ┣ 📂 domain/          # Business logic  
 ┃ ┃ ┃ ┣ 📂 entities/      # Core models used in the app  
 ┃ ┃ ┃ ┣ 📂 repositories/  # Abstract contracts (interfaces) for data  
 ┃ ┃ ┃ ┗ 📂 usecases/      # Business rules and logic  
 ┃ ┃ ┣ 📂 data/            # Data handling  
 ┃ ┃ ┃ ┣ 📂 models/        # Data models (DTOs, JSON conversion)  
 ┃ ┃ ┃ ┣ 📂 sources/       # Remote API, local database  
 ┃ ┃ ┃ ┗ 📂 repositories/  # Repository implementations  
 ┗ 📂 main.dart            # Entry point of the app  
```
