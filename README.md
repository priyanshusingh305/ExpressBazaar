# README.md

## ExpressBazaar

This README provides an overview of the Online Shopping Platform, detailing the database schema and routes configuration. The application allows users to browse products, add them to a cart, and make transactions. Additionally, administrators can manage products, categories, and orders through an admin dashboard.

### Database Schema

The `schema.rb` file represents the current state of the database. Key tables include:

1. **Admins**
   - Columns: `email`, `encrypted_password`, `reset_password_token`, `created_at`, `updated_at`
   - Indexes: `index_admins_on_email` (unique), `index_admins_on_reset_password_token` (unique)

2. **Categories**
   - Columns: `name`, `created_at`, `updated_at`

3. **Orders**
   - Columns: `product_id`, `user_id`, `quantity`, `created_at`, `updated_at`
   - Index: `index_orders_on_product_id_and_user_id`

4. **ProductCategories**
   - Columns: `product_id`, `category_id`, `created_at`, `updated_at`
   - Indexes: `index_product_categories_on_category_id`, `index_product_categories_on_product_id`
   - Foreign Keys: `product_categories(product_id) REFERENCES products(id)`, `product_categories(category_id) REFERENCES categories(id)`

5. **Products**
   - Columns: `name`, `image_url`, `description`, `price`, `created_at`, `updated_at`

6. **Users**
   - Columns: `email`, `encrypted_password`, `reset_password_token`, `created_at`, `updated_at`
   - Indexes: `index_users_on_email` (unique), `index_users_on_reset_password_token` (unique)

### Routes Configuration (`routes.rb`)

1. **Authentication**
   - Devise authentication for both users and admins.

2. **Root**
   - The root route directs to the product index page.

3. **Products**
   - Resources for browsing products with actions limited to index and show.

4. **Categories**
   - Resources for viewing categories with an action limited to show.

5. **Cart**
   - Cart resource with actions for adding, removing, and removing one item.

6. **Transactions**
   - Resources for creating and managing transactions.

7. **Admin Dashboard**
   - Admins can manage products, categories, and view orders.
   - Separate namespace for administrative functionality.

### Features

- **User Authentication**
  - Devise gem for secure user and admin authentication.

- **Product Management**
  - Browse products by category.
  - Add and remove products from the cart.
  - View and manage transactions.

- **Admin Dashboard**
  - Admins can manage products, categories, and view orders.
  - Separate namespace for administrative functionality.

- **Database Schema**
  - Well-structured database with relationships between products, categories, users, and orders.

- **Responsive Design**
  - A user-friendly interface that adapts to different screen sizes.

- **Security**
  - Utilizes Devise for secure authentication.

### Getting Started

To set up and run the application:

1. Clone the repository.
2. Install dependencies with `bundle install`.
3. Set up the database with `bin/rails db:create` and `bin/rails db:migrate`.
4. Start the server with `bin/rails server`.
5. Access the application in your web browser.

Explore the features and functionality based on the provided information. For more detailed information on each route and model, refer to the corresponding controller and model files in the application.

Enjoy your online shopping experience!
