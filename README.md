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

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Movie

- `Movie#initialize(title)`
  - `Movie` is initialized with a title (string)
- `Movie#title`
  - returns the `Movie`'s title
  - should be able to be changed after the `Movie` is created
- `Movie.all`
  - returns an array of all the `Movie` instances that have been initialized

#### Viewer

- `Viewer#initialize(username)`
  - `Viewer` is initialized with a username (string)
- `Viewer#username`
  - returns the Viewer's username
  - should be able to be changed after the Viewer is created
- `Viewer.all`
  - returns an array of all the Viewer instances that have been initialized

#### Review

- `Review#initialize(viewer, movie, rating)`
  - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
- `Review#rating`
  - returns the rating for the `Review` instance
- `Review.all`
  - returns an array of all initialized `Review` instances

### Object Relationship Methods

#### Review

- `Review#viewer`
  - returns the `Viewer` instance associated with the `Review` instance
- `Review#movie`
  - returns the `Movie` instance associated with the `Review` instance

#### Viewer

- `Viewer#reviews`
  - returns an array of `Review` instances associated with the `Viewer` instance.
- `Viewer#reviewed_movies`
  - returns an array of `Movie` instances reviewed by the `Viewer` instance.

#### Movie

- `Movie#reviews`
  - returns an array of all the `Review` instances for the `Movie`.
- `Movie#reviewers`
  - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

### Aggregate and Association Methods

#### Viewer

- `Viewer#reviewed_movie?(movie)`
  - a `Movie` instance is the only argument
  - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
- `Viewer#rate_movie(movie, rating)`
  - a `Movie` instance and a rating (number) are passed in as arguments
  - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

#### Movie

- `Movie#average_rating`
  - returns the average of all ratings for the `Movie` instance
  - to average ratings, add all ratings together and divide by the total number of ratings.
- `Movie.highest_rated`
  - returns the `Movie` instance with the highest average rating.

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. Code runs without error, some deliverables function correctly. May use the wrong syntax for class or instance methods, use variables in the wrong scope, or have duplicated methods.
3. Correct class syntax and logic for most deliverables. May be incomplete or missing a small number of deliverables. Methods might be duplicated, or might not use attr\_\* macros appropriately.
4. Correct class syntax and logic for all of the submitted code. Uses attr\_\* macros appropriately. Class and instance methods and variables have correct scope, no methods duplicated. Some deliverables might not be complete.
5. Correct class syntax and logic for all deliverables, all deliverables complete. Shared functionality factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Code might not use a single source of truth or store data on the wrong model. Code may be missing methods for accessing the related model.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models. Methods built using relationships may be incomplete.
4. Models relate to each other with belongs_to and has_many relationships. Methods built using those relationships work, but may be inelegant or duplicative.
5. Models relate to each other with belongs_to, has_many, and has_many_through relationships.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have errors. May use the wrong iterator, have incorrect logic, or have more than two collections methods left unimplemented.
3. Collections methods work correctly, with one or two unimplemented or with errors. Code may not use the appropriate built in method for each problem, duplicate logic instead of using helper methods, or have non-functional lines.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. May duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
