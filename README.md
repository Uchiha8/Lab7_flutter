# Lab 7 - Flutter Project Documentation

## Requirements

### 1. Design a ListView in which you have image of a user, First and Last Names as Title, email as subtitle of Listtile;
### 2. Create a Model that handles JSON data as shown in your Lab presentation file.
### 3. Make sure the Model you have created is connected to your project and you are using this to handle JSON from: https://randomuser.me/documentation 
### 4. You are not required to create a Model which contains all the items in the JSON, it is sufficient to handle several only such as gender, name, picture and email.

# Implementation

This Flutter project demonstrates the implementation of the Lab 7 requirements. The goal is to design a ListView displaying user information fetched from the [Random User Generator API](https://randomuser.me/documentation). The project includes a Model to handle JSON data efficiently.

## Requirements and Implementation

### 1. Design a ListView

To achieve this, the project uses the `ListView.builder` widget in the `first_screen.dart` file. Each `ListTile` in the ListView is configured to show user details, including an image, first and last names as the title, and email as the subtitle.

### 2. Create a Model for JSON Data

The `UserModel` class in the `user_model.dart` file represents the structure of user data obtained from the API. It includes fields for the first name, last name, email, and the URL of the user's picture. The `fromJson` factory method is implemented to convert JSON data into the `UserModel` object.

### 3. Connect the Model to the Project

The `UserModel` is utilized in the `first_screen.dart` file to handle the parsing of JSON data retrieved from the Random User Generator API. The `fetch` method sends an HTTP request to the API, receives the JSON response, and updates the `users` list with instances of the `UserModel`.

### 4. Handle Specific JSON Data

The `UserModel` class is designed to handle specific JSON data fields, such as gender, name, picture, and email. The `fromJson` method extracts relevant information from the JSON response and constructs a `UserModel` object.

## How to Run

To run the project, follow these steps:

1. Make sure you have Flutter installed on your system.
2. Navigate to the project directory in the terminal.
3. Run the command: `flutter run`
