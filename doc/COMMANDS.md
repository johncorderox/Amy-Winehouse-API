Note: This is still in prototyping Q1.

```ruby
standardrb --fix
brakeman
curl http://localhost:3000/api/v1/artists | json_pp
rake db:seed:dump
bundle exec erd
bundle exec rails g erd:install
bundle exec rails db:migrate
annotate --models --exclude fixtures
```
- add documentation <br>
- add erd diagram<br>
- add throttle<br>
- add api call count total <br>
