# Test Pundit blog
Simply testing out Pundit gem using a blog scaffold and Devise gem for user authentication.

## Steps taken to setup
* **Add the `Devise`, `Pundit` gems and run `bundle`.**

* **Install devise with:**

  `rails g devise:install`.

* **Generate a `User` model with and add the `role` attribute in prep with:**

  `rails g devise User role`.

* **Create a Post scaffold quickly with:**

  `rails g scaffold Post user_id:integer title:string body:text`

* **Migrate the `db` with:**

  `rake db:migrate`

* **Setup basic Pundit policy with:**

  `rails g pundit:install`
