# Object Relations Code Challenge - Flatflix

For this challenge, we'll be working with a Movie Review domain, like Netflix.

We have three models: `Viewer`, `Movie`, and `Review`.

A `Movie` has many `Review`s. A `Viewer` has many `Review`s. A `Review` belongs to a `Viewer` and belongs to a `Movie`.

`Viewer` - `Movie` is a many to many relationship.

Note: it can be helpful to draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

Build out all of the methods listed in the deliverables. The methods build on each other, so you should write the methods in order.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`. When you encounter duplicated logic, you can extract it into a shared helper method.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

### 1. `Review` model and relationships

- `Review#initialize(viewer, movie, rating)`
  - `Viewer` instance, `Movie` instance, and rating are passed in as arguments
  - the `Review` instance is added to list of all `Review` instances
- `Review.all`
  - returns an array of all initialized `Review` instances
- `Review#viewer`
  - returns the `Viewer` instance associated with the `Review` instance
- `Review#movie`
  - returns the `Movie` instance associated with the `Review` instance
- `Review#rating`
  - returns the rating for the `Review` instance;
  - if the viewer has not yet rated the movie, this method should return `nil`.

### 2. `Viewer` relationships

- `Viewer#reviews`
  - returns an array of `Review` instances associated with the `Viewer` instance.
- `Viewer#add_review(movie)`
  - `Movie` instance is passed in as its only argument and this method adds the `Movie` instance to the `Viewer` instance's list of reviewed movies;
  - returns a `Review` instance.
- `Viewer#reviewed_movies`
  - returns an array of `Movie` instances reviewed by the `Viewer` instance.
- `Viewer#reviewed_movie?`
  - a `Movie` instance is passed in as its only argument;
  - returns `true` if the `Viewer` instance already has an association with the `Movie` instance.

### 3. Checkpoint

After testing all of your code up to this point, `git add` and `git commit` your code. **No need to `git push` yet**.

### 4. `Movie` relationships

- `Movie#reviews`
  - returns an array of all the `Review` instances for the `Movie`.
- `Movie#viewers`
  - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

### 5. Advanced `Review` methods

- `Movie#average_rating`
  - returns the average of all ratings for the `Movie` instance;
  - to average ratings, add all ratings together and divide by the total number of ratings.
- `Movie.highest_rated`
  - returns the `Movie` instance with the highest average rating.
- `Viewer#rate_movie(movie)`
  - a `Movie` instance and a rating are passed in as arguments;
  - assigns the rating to the `Review` instance already associated with this `Viewer` instance and the passed `Movie` instance;
  - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance;
  - rating should be a number between 1 and 5, other values should not be allowed.

## Wrapping up

When you have finished the deliverables or the time limit has been reached, `git add`, `git commit`, and `git push` to your fork of the code challenge repo.

Visit your fork on GitHub, and make sure your changes are there. If your changes are there, click **New Pull Request**, provide a title, and click the green **Create Pull Request** button.

Copy the link of your pull request, paste it into the assignment page, and submit the assignment.
