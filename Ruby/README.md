## Setup

* Make sure you have Ruby MRI version > 2.3.0 installed and active (check with `ruby -v`)
* `cd Ruby` (this folder)
* Check for bundler installation via `bundle -v`
  * If not installed, run `gem install bundler`
* `bundle install` to install dependencies listed in `Gemfile.lock`

## Running the examples

* Update the `source_credentials`, `user_credentials`, and `site_ids` in the example scripts with your info
* Run scripts using `ruby`
  * `ruby get_classes_example.rb`
  * `ruby checkout_shopping_cart_example.rb` (will require filling in more data specific to your site and transaction)
* View response in console
