
## Description

> **Problem:** Build an application, where you can see your favorites videos, and keep them organized by categories and make comments about them.


To do so, you have to:

1. Create a category with her name and indicate if is your favorite category.

2. Add a video, with his title and url and which category this video belongs.

3. In this video you can comment, with your name and your comment.


## Bonus

It was requested a GET(API), where you send a request with the category id, and get back a reponse in a json format which contains the links and titles of the videos that are registered to that category

### Request

    /api/:id_category

## Project Requirements

- Ruby 2.5.3
- Rails 5.2.2


## Installation

First of all you'll need to **clone** this repo:

    git clone https://github.com/tobiasaires/videoFacil.git && cd videoFacil
    
then:

    bundle install

Finally:

	rails db:migrate


## Running

Running with Rails built in server:

    rails s

The project probably will run on localhost:3000

You can change the port by typing 

	rails s -p [port]


## View

This file corresponds to the main app view.


## Comments

This project was built for Mercadapp Inteern Hiring Process. And I'm also learning rails, so feel free to contact me and give me any feedback about this project.

## Author

* **Tobias Silveira Peixoto Aires Martins** - [GitHub](https://github.com/tobiasaires) - [LinkedIn](https://www.linkedin.com/in/tobias-silveira) - Email: tobiasaires@gmail.com

