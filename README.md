
<div id="header" align="center">
<img src="src/assets/logo_transparent.png" alt="onyva logo" width="200" height="auto" />
</div>

## Project Goal

This repository is a work in progress by Braxton Eddings, Anhnhi Tran, and Kaylah Rose Mitchell. The goal of this project is learn and rebuild Onyva Backend Service utilizing GraphQL. 
<br><br>
# <p align="center"> Onyva Backend Service - GraphQL </p>

This application consumes external APIs to fetch information about any travel destination, whether it's a bustling city, a serene countryside, or a quaint village. With this data, we create personalized trip plans that cater to our users' unique interests and preferences. Onyva backend provides seamless integration with our frontend application, allowing users to effortlessly organize their trips with ease. By consuming our API, the frontend communicates with our application and unlocks a wealth of local recommendations for restaurants, attractions, and hidden gems.
## About Onyva

Onyva is an innovative travel application that aims to simplify the process of planning a trip and enhance the overall travel experience for users. With Onyva, users can easily create personalized itineraries for their trips, complete with local recommendations for restaurants and tourist attractions. Users can also invite their friends to join them on their trips and manage their trip details together.

Users can also invite their friends to join them on their trips and easily share their flight information for added convenience. One of the key features of Onyva is its advanced flight tracking technology, which allows users to keep track of their friends' flight status in real-time, ensuring a safer and more stress-free travel experience.

At its core, Onyva is committed to providing an exceptional travel experience for users, and we believe that our application can be a valuable tool for anyone looking to plan their next adventure.


## Endpoint
All requests are made to one endpoint:
```http
POST http://localhost:5000/api/v1/onyva
```
Click the `details` drop down for response details.
<details close>


### Get all Users

<details close>
<summary>  Details </summary>
<br>
    
Query: <br>
```json
query { 
        users {
            id
            firstName
            lastName
            email
        }
    }
```

| Code | Description |
| :--- | :--- |
| 200 | `OK` |

Example Value:

```json
{
    "data": {
        "users": [
            {
                "id": "1",
                "firstName": "John",
                "lastName": "Doe",
                "email": "john.doe@example.com"
            },
            {
                "id": "2",
                "firstName": "Judy",
                "lastName": "Doe",
                "email": "judy.doe@example.com"
            },
            {
                "id": "3",
                "firstName": "Anhnhi",
                "lastName": "Tran",
                "email": "anhtran811@gmail.com"
            }
        ]
    }
}
```

</details>

---

### Get one user

<details close>
<summary>  Details </summary>
<br>
    
Query: <br>
```json
query { 
        user(id: 1) {
            id
            firstName
            lastName
            email
        }
    }
```

| Code | Description |
| :--- | :--- |
| 200 | `OK` |

Example Value:

```json
{
    "data": {
        "user": {
            "id": "1",
            "firstName": "John",
            "lastName": "Doe",
            "email": "john.doe@example.com"
        }
    }
}

```

</details>
</details>

---

## Status Codes

Onyva returns the following status codes in its API:

| Status Code | Description |
| :--- | :--- |
| 200 | `OK` |
| 201 | `CREATED` |
| 400 | `BAD REQUEST` |
| 404 | `NOT FOUND` |
| 500 | `INTERNAL SERVER ERROR` |

## Prerequisites
Running this project requires:
- Rails 5.2.8
- Ruby 2.7.4
- Gems
  - graphql, '1.11.6'
- External APIs:
  - This application required external API keys which are stored in a <i>.env</i> file at the top level of the program directory
    - API keys can be requested but must be named as follows:
      - :round_pushpin: GEOAPIFY_KEY - [Geoapify](https://myprojects.geoapify.com/projects)
      - :camera: FLICKR_KEY - [FLICKR](https://www.flickr.com/services/api/misc.api_keys.html)
      - :airplane: AERO_KEY - [AeroDataBox](https://rapidapi.com/aedbx-aedbx/api/aerodatabox/)
      - :round_pushpin: AERO_HOST - [AeroDataBox](https://rapidapi.com/aedbx-aedbx/api/aerodatabox/)  

## Installation

1. Fork and clone this repository
2. `cd` into the root directiory
3. `bundle install`
4. `rails db:{drop,create,migrate,seed}`
5. Run the test suite with `bundle exec rspec`
6. Start the local server by running `rails s`
7. Visit the app on `localhost:5000` in your web browser

Pull down the [Front-end repo](https://github.com/On-y-va/onyva_fe). Set up instructions are in that repository's README.

## Database Schema

![Screen Shot 2023-03-03 at 15 30 07](https://user-images.githubusercontent.com/111713452/222853257-e6106237-b246-4a5e-b9d2-5379cb8cfe51.png)


## Contributors
  
<b>Anhnhi Tran, PT, DPT</b> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GitHub: <a href="https://github.com/anhtran811">@anhtran811</a> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LinkedIn: <a href="https://www.linkedin.com/in/anhtran8/">anhtran8</a> <br>

<b>Kaylah Rose Mitchell</b> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GitHub: <a href="https://github.com/kaylahrose">@kaylahrose</a> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LinkedIn: <a href="https://www.linkedin.com/in/kaylahrose/">kaylahrose</a> <br>

<b>Braxton Eddings</b> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GitHub: <a href="https://github.com/beddings81">@beddings81</a> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LinkedIn: <a href="https://www.linkedin.com/in/braxton-eddings/">braxton-eddings</a> <br>


