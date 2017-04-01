# README

1/ Go to config/database.yml and change the following:
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <DB_USER>
  password: <DB_PASSWORD>
  host: <DB_IP>
