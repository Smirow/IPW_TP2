# README

1/ Go to config/database.yml and change the following:
```
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <DB_USER>
  password: <DB_PASSWORD>
  host: <DB_IP>
  ```
2/ Start the server:
```
bundle exec rails server -p <PORT> -b <BINDING_IP>
```