# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActiveRecord::Base.connection.execute "SET collation_connection = 'utf8_spanish_ci' "
ActiveRecord::Base.connection.execute 'set names utf8'