# Service Bank Sampah123

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/username/repo.svg?branch=master)](https://travis-ci.org/username/repo)
[![Coverage Status](https://coveralls.io/repos/github/username/repo/badge.svg?branch=master)](https://coveralls.io/github/username/repo?branch=master)

Bank Sampah123 Project is one of work program for KKN Group 1 for creating application to helping trash bank for creating such modern way to manage the rubbish.
It using lazy development style .

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation
To run this project locally, follow these steps:

1. Install Node.js and npm. You can download them from [here](https://nodejs.org).

2. Clone the repository:
   ```shell
   git clone [https://github.com/username/repo.git](https://github.com/Peache36/banksampah123.git)
   cd banksampah123
   npm install
   npm install -g prisma
3. Set up the database connection:
   Create a new PostgreSQL database.
   Update the DATABASE_URL in the .env file with your database connection details
4. Run Database Migration
   ```shell
   npx prisma migrate dev
5. Start Application or Start For Development
   ```shell
   npm run dev
   
## Usage
Examples and instructions for using the project.

### Middleware 
The verifyToken middleware is used to authenticate and verify the validity of an access token provided in the request headers. It ensures that the request is coming from an authenticated user.
### Endpoint
On every router with middleware like this `somerouter.post('/some-path', verifyToken , somecontroller)`
It must include headers like this 
| name | Type   | Description   |
| -------- | ------ | ---------------------- |
| token   | string | valid token from user       |



### Sign-In API Endpoint

This API endpoint allows users to sign in using their email and password.

### URL

`POST /signin`

### Request Body

| Parameter | Type   | Description           |
| --------- | ------ | --------------------- |
| email     | string | User's email address  |
| password  | string | User's account password |

### Response

| Property | Type   | Description                                                |
| -------- | ------ | ---------------------------------------------------------- |
| status   | string | Status of the sign-in operation (`success` or `fail`)       |
| data     | object | User data if sign-in is successful, error message otherwise |

#### Success Response

```json
{
  "status": "success",
  "data": {
    // User data object (e.g., user ID, email, etc.)
  }
}
```

#### Failure Response

```json
{
  "status": "fail",
  "message": "Email or password wrong"
}
```

### Examples

#### Request

```
POST /signin

{
  "email": "user@example.com",
  "password": "password123"
}
```

#### Response (Success)

```
HTTP/1.1 200 OK

{
  "status": "success",
  "data": {
    // User data object
  }
}
```

#### Response (Failure)

```
HTTP/1.1 401 Unauthorized

{
  "status": "fail",
  "message": "Email or password is incorrect"
}
```

Make sure to replace `user@example.com` and `password123` with valid user credentials for testing purposes.

Here's the documentation for the `signUp` API endpoint:

## Sign-Up API Endpoint

This API endpoint allows users to create a new account by providing their name, email, password, address, and phone number.

### URL

`POST /signup`

### Request Body

| Parameter    | Type   | Description                    |
| ------------ | ------ | ------------------------------ |
| name         | string | User's full name               |
| email        | string | User's email address           |
| password     | string | User's account password        |
| address      | string | User's address                 |
| phoneNumber  | string | User's phone number            |

### Response

| Property | Type   | Description                                                |
| -------- | ------ | ---------------------------------------------------------- |
| status   | string | Status of the sign-up operation (`success` or `fail`)       |
| data     | object | User data if sign-up is successful, error message otherwise |

#### Success Response

```json
{
  "status": "success",
  "data": {
    // User data object (e.g., user ID, name, email, etc.)
  }
}
```

#### Failure Response

```json
{
  "status": "fail",
  "message": "Error message describing the reason for the failure"
}
```

### Examples

#### Request

```
POST /signup

{
  "name": "John Doe",
  "email": "johndoe@example.com",
  "password": "password123",
  "address": "123 Main Street",
  "phoneNumber": "+1234567890"
}
```

#### Response (Success)

```
HTTP/1.1 200 OK

{
  "status": "success",
  "data": {
    // User data object
  }
}
```

#### Response (Failure)

```
HTTP/1.1 409 Conflict

{
  "status": "fail",
  "message": "Email already exists"
}
```

```
HTTP/1.1 422 Unprocessable Entity

{
  "status": "fail",
  "message": "Please fill in all the required fields"
}
```

Make sure to replace `johndoe@example.com` and `password123` with unique user credentials for testing purposes.

## Upload Photo API Endpoint

This API endpoint allows users to upload a profile photo by providing the photo file and the user ID.

### URL

`POST /upload/photo`

### Request Body

| Parameter | Type   | Description             |
| --------- | ------ | ----------------------- |
| filename  | string | Name of the photo file   |
| userId    | number | ID of the user           |

### Response

| Property | Type   | Description                                           |
| -------- | ------ | ----------------------------------------------------- |
| status   | string | Status of the upload operation (`success` or `fail`)   |
| data     | object | Updated user profile data if upload is successful      |

#### Success Response

```json
{
  "status": "success",
  "data": {
    // Updated user profile data
  }
}
```

#### Failure Response

```json
{
  "status": "fail",
  "message": "Error message describing the reason for the failure"
}
```

### Examples

#### Request

```
POST /upload/photo

FormData:
- filename: photo.jpg
- userId: 123
- photo: [photo file]
```

#### Response (Success)

```
HTTP/1.1 201 Created

{
  "status": "success",
  "data": {
    // Updated user profile data
  }
}
```

#### Response (Failure)

```
HTTP/1.1 500 Internal Server Error

{
  "status": "fail",
  "message": "An error occurred while uploading the photo"
}
```

## Add Rubbish

The `addRubbish` endpoint is used to add a new rubbish item to the system.

### Endpoint

```
POST /rubbish/add
```

### Request Body

The request body should contain the following information:

| Field | Type   | Description                |
|-------|--------|----------------------------|
| price | number | The price of the rubbish   |
| unit  | string | The unit of measurement    |
| name  | string | The name of the rubbish item |

### Response

- Success: Returns the newly created rubbish item.

```
Status: 201 Created
```

```json
{
  "status": "success",
  "data": {
    "id": 123,
    "price": 10.99,
    "unit": "kg",
    "name": "Plastic Bottles",
    "createdAt": "2023-07-01T12:34:56Z",
    "updatedAt": "2023-07-01T12:34:56Z"
  }
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Usage Example

```javascript
const axios = require('axios');

const data = {
  price: 10.99,
  unit: "kg",
  name: "Plastic Bottles"
};

axios.post('/rubbish/add', data)
  .then(response => {
    console.log(response.data);
  })
  .catch(error => {
    console.error(error);
  });
```

## Edit Rubbish

The `editRubbish` endpoint is used to update an existing rubbish item.

### Endpoint

```
PUT /rubbish/:id
```

- `:id`: The ID of the rubbish item to be edited.

### Request Parameters

| Parameter | Type   | Description                |
|-----------|--------|----------------------------|
| id        | number | The ID of the rubbish item |

### Request Body

The request body should contain the following information:

| Field | Type   | Description                |
|-------|--------|----------------------------|
| unit  | string | The updated unit of measurement |
| price | number | The updated price of the rubbish |

### Response

- Success: Returns the updated rubbish item.

```
Status: 200 OK
```

```json
{
  "status": "success",
  "data": {
    "id": 123,
    "price": 15.99,
    "unit": "piece",
    "name": "Plastic Bottles",
    "createdAt": "2023-07-01T12:34:56Z",
    "updatedAt": "2023-07-01T13:45:12Z"
  }
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Usage Example

```javascript
const axios = require('axios');

const id = 123;
const data = {
  unit: "piece",
  price: 15.99
};

axios.put(`/rubbish/${id}`, data)
  .then(response => {
    console.log(response.data);
  })
  .catch(error => {
    console.error(error);
  });
```

## Delete Rubbish

The `deleteRubbish` endpoint is used to delete an existing rubbish item.

### Endpoint

```
DELETE /rubbish/:id
```

- `:id`: The ID of the rubbish item to be deleted.

### Request Parameters

| Parameter | Type   | Description                |
|-----------|--------|----------------------------|
| id        | number | The ID of the rubbish item |

### Response

- Success: Returns a success message indicating the successful deletion of the rubbish item.

```
Status: 200 OK
```

```json
{
  "status": "success"
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Usage Example

```javascript
const axios = require('axios');

const id = 123;

axios.delete(`/rubbish/${id}`)
  .then(response => {
    console.log(response.data);
  })
  .catch(error => {
    console.error(error);
  });
```

## Get All Rubbish

The `getAllRubbish` endpoint is used to retrieve all rubbish items.

### Endpoint

```
GET /rubbish
```

### Response

- Success: Returns an array of all rubbish items.

```
Status: 200 OK
```

```json
{
  "status": "success",
  "data": [
    {
      "id": 1,
      "name": "Plastic Bottles",
      "unit": "piece",
      "price": 1.99,
      "createdAt": "2023-07-01T12:34:56Z",
      "updatedAt": "2023-07-01T13:45:12Z"
    },
    {
      "id": 2,
      "name": "Aluminum Cans",
      "unit": "piece",
      "price": 2.99,
      "createdAt": "2023-07-01T14:23:45Z",
      "updatedAt": "2023-07-01T15:36:18Z"
    },
    ...
  ]
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Usage Example

```javascript
const axios = require('axios');

axios.get('/rubbish')
  .then(response => {
    console.log(response.data);
  })
  .catch(error => {
    console.error(error);
  });
```

## Deposit Rubbish

The `depositRubbish` endpoint is used to deposit rubbish items for a user.

### Endpoint

```
POST /admin/rubbish-deposit/:id
```

- `:id`: The ID of the user.

### Request Parameters

| Parameter | Type   | Description                |
|-----------|--------|----------------------------|
| id        | number | The ID of the user         |

### Request Body

The request body should contain the following information:

| Field        | Type     | Description                                     |
|--------------|----------|-------------------------------------------------|
| rubbishList  | string   | A comma-separated list of rubbish item IDs       |

### Response

- Success: Returns the deposited rubbish information.

```
Status: 201 Created
```

```json
{
  "status": "success",
  "data": {
    "id": 19,
    "userId": 1,
    "rubbish": [
      {
        "depositId": 19,
        "rubbishId": 20
      },
      {
        "depositId": 19,
        "rubbishId": 19
      },
      {
        "depositId": 19,
        "rubbishId": 18
      },
      {
        "depositId": 19,
        "rubbishId": 17
      },
      {
        "depositId": 19,
        "rubbishId": 16
      },
      {
        "depositId": 19,
        "rubbishId": 15
      }
    ]
  }
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Example Usage

```
POST http://localhost:3001/admin/rubbish-deposit/1
```

Request Body:
```json
{
  "rubbishList": "20,19,18,17,16,15"
}
```

Response Body:
```json
{
  "status": "success",
  "data": {
    "id": 19,
    "userId": 1,
    "rubbish": [
      {
        "depositId": 19,
        "rubbishId": 20
      },
      {
        "depositId": 19,
        "rubbishId": 19
      },
      {
        "depositId": 19,
        "rubbishId": 18
      },
      {
        "depositId": 19,
        "rubbishId": 17
      },
      {
        "depositId": 19,
        "rubbishId": 16
      },
      {
        "depositId": 19,
        "rubbishId": 15
      }
    ]
  }
}
```

Certainly! Here's the documentation for the `makePost` endpoint:

## Make Post

The `makePost` endpoint is used to create a new post.

### Endpoint

```
POST /post/make-post
```

### Request Body

The request body should contain the following information:

| Field   | Type   | Description                     |
|---------|--------|---------------------------------|
| title   | string | The title of the post           |
| content | string | The content of the post         |

### Response

- Success: Returns the newly created post.

```
Status: 201 Created
```

```json
{
  "status": "success",
  "data": {
    "id": 123,
    "title": "Example Post",
    "content": "This is an example post",
    "photo": "",
    "user": {
      "id": 456,
      "name": "John Doe",
      "email": "john@example.com"
    },
    "createdAt": "2023-07-01T12:34:56Z",
    "updatedAt": "2023-07-01T12:34:56Z"
  }
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Example Usage

```
POST http://localhost:3001/post/make-post
```

Request Body:
```json
{
  "title": "Example Post",
  "content": "This is an example post"
}
```

Response Body:
```json
{
  "status": "success",
  "data": {
    "id": 123,
    "title": "Example Post",
    "content": "This is an example post",
    "photo": "",
    "user": {
      "id": 456,
      "name": "John Doe",
      "email": "john@example.com"
    },
    "createdAt": "2023-07-01T12:34:56Z",
    "updatedAt": "2023-07-01T12:34:56Z"
  }
}
```
## Get All Posts

The `getAllPost` endpoint is used to retrieve all posts along with their comments.

### Endpoint

```
GET /post/
```

### Response

- Success: Returns an array of all posts with their comments.

```
Status: 200 OK
```

```json
{
  "status": "success",
  "data": [
    {
      "id": 123,
      "title": "Example Post 1",
      "content": "This is an example post 1",
      "photo": "",
      "user": {
        "id": 456,
        "name": "John Doe",
        "email": "john@example.com"
      },
      "comments": [
        {
          "id": 1,
          "content": "Comment 1",
          "user": {
            "id": 789,
            "name": "Jane Smith",
            "email": "jane@example.com"
          }
        },
        {
          "id": 2,
          "content": "Comment 2",
          "user": {
            "id": 890,
            "name": "Alice Johnson",
            "email": "alice@example.com"
          }
        }
      ],
      "createdAt": "2023-07-01T12:34:56Z",
      "updatedAt": "2023-07-01T12:34:56Z"
    },
    {
      "id": 456,
      "title": "Example Post 2",
      "content": "This is an example post 2",
      "photo": "",
      "user": {
        "id": 789,
        "name": "Jane Smith",
        "email": "jane@example.com"
      },
      "comments": [
        {
          "id": 3,
          "content": "Comment 3",
          "user": {
            "id": 890,
            "name": "Alice Johnson",
            "email": "alice@example.com"
          }
        },
        {
          "id": 4,
          "content": "Comment 4",
          "user": {
            "id": 123,
            "name": "John Doe",
            "email": "john@example.com"
          }
        }
      ],
      "createdAt": "2023-07-02T09:12:34Z",
      "updatedAt": "2023-07-02T09:12:34Z"
    }
  ]
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Example Usage

```
GET http://localhost:3001/all-posts
```

Response Body:
```json
{
  "status": "success",
  "data": [
    {
      "id": 123,
      "title": "Example Post 1",
      "content": "This is an example post 1",
      "photo": "",
      "user": {
        "id": 456,
        "name": "John Doe",
        "email": "john@example.com"
      },
      "comments": [
        {
          "id": 1,
          "content": "Comment 1",
          "user": {
            "id": 789,
            "name": "Jane Smith",
            "email": "jane@example.com"
          }
        },
        {
          "id": 2,
          "content": "Comment 2",
          "user": {
            "

id": 890,
            "name": "Alice Johnson",
            "email": "alice@example.com"
          }
        }
      ],
      "createdAt": "2023-07-01T12:34:56Z",
      "updatedAt": "2023-07-01T12:34:56Z"
    },
    {
      "id": 456,
      "title": "Example Post 2",
      "content": "This is an example post 2",
      "photo": "",
      "user": {
        "id": 789,
        "name": "Jane Smith",
        "email": "jane@example.com"
      },
      "comments": [
        {
          "id": 3,
          "content": "Comment 3",
          "user": {
            "id": 890,
            "name": "Alice Johnson",
            "email": "alice@example.com"
          }
        },
        {
          "id": 4,
          "content": "Comment 4",
          "user": {
            "id": 123,
            "name": "John Doe",
            "email": "john@example.com"
          }
        }
      ],
      "createdAt": "2023-07-02T09:12:34Z",
      "updatedAt": "2023-07-02T09:12:34Z"
    }
  ]
}
```
## Make a Comment

The `makeAcomment` endpoint is used to add a comment to a post.

### Endpoint

```
POST /post/:postId/comment
```

- `:postId`: The ID of the post.

### Request Parameters

| Parameter | Type   | Description           |
|-----------|--------|-----------------------|
| postId    | number | The ID of the post     |

### Request Body

The request body should contain the following information:

| Field   | Type   | Description                       |
|---------|--------|-----------------------------------|
| content | string | The content of the comment         |

### Response

- Success: Returns the created comment.

```
Status: 201 Created
```

```json
{
  "status": "success",
  "data": {
    "id": 1,
    "content": "This is a comment",
    "user": {
      "id": 123,
      "name": "John Doe",
      "email": "john@example.com"
    },
    "post": {
      "id": 456,
      "title": "Example Post",
      "content": "This is an example post",
      "photo": ""
    },
    "createdAt": "2023-07-01T12:34:56Z",
    "updatedAt": "2023-07-01T12:34:56Z"
  }
}
```

- Failure: Returns an error message indicating the cause of the failure.

```
Status: 500 Internal Server Error
```

```json
{
  "status": "fail",
  "message": "Internal server error"
}
```

### Example Usage

```
POST http://localhost:3001/post/456/comment
```

Request Body:
```json
{
  "content": "This is a comment"
}
```

Response Body:
```json
{
  "status": "success",
  "data": {
    "id": 1,
    "content": "This is a comment",
    "user": {
      "id": 123,
      "name": "John Doe",
      "email": "john@example.com"
    },
    "post": {
      "id": 456,
      "title": "Example Post",
      "content": "This is an example post",
      "photo": ""
    },
    "createdAt": "2023-07-01T12:34:56Z",
    "updatedAt": "2023-07-01T12:34:56Z"
  }
}
```

## Contributing
Guidelines for contributing to the project.

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).