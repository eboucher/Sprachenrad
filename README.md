# Sprachenrad - German Language Dictionary

![Sprachenrad Logo](banner.png)

## Introduction

Sprachenrad is a German language dictionary web application inspired by the concept of Urban Dictionary. It provides a platform for users to submit, explore, and discuss German language entries, definitions, and examples in an engaging and user-friendly manner.

## Table of Contents

- [Technical Requirements](#technical-requirements)
- [Feature Requirements](#feature-requirements)
- [Getting Started](#getting-started)
- [License](#license)

## Technical Requirements

For the successful development and deployment of Sprachenrad, the following technical requirements have been identified:

**User Authentication and Authorization:**
- Implement a user registration and login system with proper authentication and authorization mechanisms.
- Differentiate between regular users and administrators with different levels of access and permissions.

**Database Management:**
- Utilize PostgreSQL as the chosen database for storing user data, dictionary entries, and other relevant information.
- Design the database schema to efficiently handle data storage and retrieval.

**RESTful API Design:**
- Create a well-defined RESTful API for frontend-backend communication.
- Use appropriate HTTP methods (GET, POST, PUT, DELETE) for different operations.
- Follow RESTful API best practices and adhere to standard conventions.

<!-- Continue listing the technical requirements -->

## Feature Requirements

The following features will be implemented in Sprachenrad to provide a comprehensive and engaging user experience:

**User Authentication and Authorization:**
- User registration and login with email and password.
- User roles: regular users and administrators.
- User profile management.

**Dictionary Entries:**
- Allow users to submit new German language entries.
- Entries should include the word, definition, and example usage.
- Support for upvoting and downvoting entries.
- Sort entries based on popularity and recency.

<!-- Continue listing the feature requirements -->

## Getting Started

Follow these instructions to set up and run the Sprachenrad web application locally on your machine using Docker Compose.

### Prerequisites:

- Docker
- PostgreSQL installed on your system.

1. Clone this repository.
2. Make sure you have Docker Compose installed.
3. Navigate to the project directory.
4. Build and start the containers using `docker-compose up -d --build`.
5. Access the application in your browser at `http://localhost:8080`.


## License

Sprachenrad is licensed under the [MIT License](https://mit-license.org/). Feel free to use, modify, and distribute the code in accordance with the terms of the license.

---

*This README provides an overview of Sprachenrad, its technical and feature requirements, and instructions for getting started with the development environment. For more information about the project, refer to the relevant sections above.*

---
