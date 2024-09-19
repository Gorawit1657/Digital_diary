# Digital Diary Project

## Overview

Our project is a web application designed to provide users with a modern and secure way to maintain a digital diary. A diary, in its simplest form, is a record of each day that captures both the significant and everyday moments, along with the thoughts and emotions associated with them. This digital diary offers an efficient and functional alternative to traditional paper diaries. With a strong focus on privacy and user experience, it employs appropriate functions to safeguard users' data, ensuring their thoughts and memories remain private and secure

## Key Techniques

### Frontend:
- **HTML/CSS**: For structuring and styling the user interface.
- **JavaScript**: For dynamic interaction and enhanced user experience.
- **Figma**: Used for designing the user interface.

### Backend:
- **MySQL Database**: Designed to store user information, diary entries, comments, and goals securely.
- **PHP**: For server-side logic and handling user authentication, CRUD operations on the diary, and goal tracking.

### Database Design:
- **Entities**: User, Diary, Comment, Goal, Login.
- **Relationships**: ER diagram showing the linkage between users, diaries, comments, and goals.

## Setup Instructions

1. **Install MySQL**:
   - Install MySQL on your system and create a database.
   - Use the provided SQL script to create the necessary tables and relationships.

2. **Set Up the Web Server**:
   - Use XAMPP or any PHP-compatible web server.
   - Place the PHP files in the server's document root (e.g., `htdocs` for XAMPP).

3. **Run the SQL Script**:
   - Create the database and tables by executing the SQL script in MySQL

4. **Run the Project**:
   - Start your web server and access the project via the browser.
   - Sign up, customize the diary, and start adding entries or setting goals.

## Database Schema

The database design includes the following entities:

- **User**: Stores user details such as username, email, and preferences.
- **Diary**: Stores user diary entries with content, date modified, and mood.
- **Goal**: Tracks user goals, deadlines, and completion status.
- **Comment**: Allows users to add comments to their diary entries.

## Important Notes

- **Security**: Ensure that the user passwords are stored securely (use hashing algorithms such as `bcrypt` or `sha256`).
- **Customization**: Users can customize the look and feel of their diary through themes, fonts, and pad styles.
- **Accessibility**: Users can access the diary from any device with an internet connection.
- **Figma**(https://www.figma.com/proto/yhi6Uf4XJBQO8pi9wb5hf2/Diary?type=design&node-id=61-3&t=svSbADUf1USpsazr-0&scaling=min-zoom&page-id=0%3A1&starting-point-node-id=61%3A3)
