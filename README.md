# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Notes:

#### Controller
* It acts as the middleman between the views and model.
    * Views are used to display data to the user while models are where you define methods to manipulate data.
* The naming convention of controllers in Rails favors pluralization though it is not strictly required. For example UsersController is preferrable over UserController.
    * This convention allows us to be able to generate routes using resources keyword. E.g.
resources :users,
generates all the routes involving the controller actions and expects a UsersController defined.
* In controllers there are two types of controllers query string parameters and post data.
    * Query String Parameters:
        * These are parameters that are sent as part of the URL. The query string is everything after “?” in the URL.
    * Post Data parameters
        * 

### Things to Remember:

* Controller instance variables can be accessed by the view.
* Migrations are used to alter the structure of an application's database. In Rails applications, migrations are
written in Ruby so that they can be database-agnostic.
* combination of routes, controller actions, and views that work together to perform CRUD operations on an entity, that entity is called a resource.
* The values in the "Prefix" column above plus a suffix of _url or _path form the names of these helpers. For example, the article_path helper returns "/articles/#{article.id}" when given an article.
* The link_to helper renders a link with its first argument as the link's text and its second argument as the link's destination. If we pass a model object as the second argument, link_to will call the appropriate path helper to convert the object to a path.
* The form_with helper method instantiates a form builder.
* A partial's filename must be prefixed with an underscore, e.g. _form.html.erb. But when rendering, it is referenced without the underscore, e.g. render "form".

* Strong Parameters is a feature of Rails that prevents assigning request parameters to objects unless they have been explicitly permitted. It has its own DSL (Domain Specific Language, or in other words, a predefined syntax it understands), that allows you to indicate what parameters should be allowed.