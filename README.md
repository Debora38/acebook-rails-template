[![Build Status](https://travis-ci.com/thielsen/acebook-rails-template.svg?branch=staging)](https://travis-ci.com/thielsen/acebook-rails-template) [![Maintainability](https://api.codeclimate.com/v1/badges/ba1feb2713e2722cfb3c/maintainability)](https://codeclimate.com/github/thielsen/acebook-rails-template/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/ba1feb2713e2722cfb3c/test_coverage)](https://codeclimate.com/github/thielsen/acebook-rails-template/test_coverage)

## AceBook

Acebook is a clone of Facebook functionality developed as a group project in weeks 8 and 9 at Makers Academy by four members of the January 2019 cohort.

## Technologies

- Ruby on Rails (Web framework)
- RSpec, Capybara (testing)
- Devise (User authentication and routing)
- Travis (Continuous Integration)
- Code Climate (Code / test coverage) - run on every commit confirming that code conforms to linting guidelines
- Heroku (Deployment)

## Project aims

- High maintainability
- Quality, easily-changeable code
- High test coverage (95%+)
- Effective Agile working methods with 2-day sprints
- Strict best-practice Git use (branching, pull request reviewing)
- Documentation of process and learnings in an associated wiki (above) and the linked collaborative learnings Google doc.

## Functionality implemented

- A user can sign up
- The user's information is stored so that login and logout in the same account are possible
- Edit and Delete of the account are also possible
- A user can post a sentence into the home page (showing firstname, lastname, date and time)
- A user can see other user's posts in the home page
- Edit and deletion of posts is possible
- A user can like posts
- A user can unlike posts (s)he liked
- A user can see his/her own posts on his/her profile page
- A user can visit other user's profiles
- A user can post pictures
- A user can use a picture as profile picture
- All pictures posted are stored into an album
- A user's album is visible on his/her profile
- At user's account deletion, all his posts and pictures, as well as his/her likes to other users' posts are deleted

## Links

The production application is deployed to https://acebook-template.herokuapp.com/<br>
Trello card wall for the project management is here: https://trello.com/b/k60sWUQo/team-rails-template<br>
Learning diary summarising what has been delivered so far: https://docs.google.com/document/d/1vGEef5_RY9mH_dVudXZYRc1kuYgQfODREZF7uykFhuk/edit<br>

## Installing

To install a development instance locally clone this repository. Then:

```bash
> bundle install
> brew install imagemagick
```
 (assuming you are on a Mac. If you are on Linux, it will likely be bundled in your distro. This is required as the image handler gem, Paperclip, uses ImageMagick technology. It is only needed for running locally. Remote deployment on Heroku includes it on their dynos. For more information on Paperclip requirements see https://www.rubydoc.info/gems/paperclip/#requirements.)
```bash
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Confirm all green
> bin/rails server
```
You can then connect to http://localhost:3000

## Screenshots of the program

#### Log in page
<img src="https://github.com/Debora38/acebook-rails-template/blob/staging/app/assets/images/login_page.png?raw=true">

#### Sign up page
<img src="https://github.com/Debora38/acebook-rails-template/blob/staging/app/assets/images/signup_page.png?raw=true">

#### Home page
<img src="https://github.com/Debora38/acebook-rails-template/blob/staging/app/assets/images/home_page.png?raw=true">

#### Posts with pictures and likes
<img src="https://github.com/Debora38/acebook-rails-template/blob/staging/app/assets/images/posts_likes.png?raw=true">

#### Profile page
<img src="https://github.com/Debora38/acebook-rails-template/blob/staging/app/assets/images/profile_page.png?raw=true">

#### Album page
<img src="https://github.com/Debora38/acebook-rails-template/blob/staging/app/assets/images/album_page.png?raw=true">
