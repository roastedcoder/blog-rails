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

### Things to Remember:

* Controller instance variables can be accessed by the view.
* Migrations are used to alter the structure of an application's database. In Rails applications, migrations are
written in Ruby so that they can be database-agnostic.
* combination of routes, controller actions, and views that work together to perform CRUD operations on an entity, that entity is called a resource.
* The values in the "Prefix" column above plus a suffix of _url or _path form the names of these helpers. For example, the article_path helper returns "/articles/#{article.id}" when given an article.
* The link_to helper renders a link with its first argument as the link's text and its second argument as the link's destination. If we pass a model object as the second argument, link_to will call the appropriate path helper to convert the object to a path.
* The form_with helper method instantiates a form builder.
* A partial's filename must be prefixed with an underscore, e.g. _form.html.erb. But when rendering, it is referenced without the underscore, e.g. render "form".