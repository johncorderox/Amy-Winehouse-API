# Beach-House-API ![GitHub top language](https://img.shields.io/github/languages/top/johncorderox/Beach-House-API?style=flat-square) ![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/johncorderox/Beach-House-API/master?style=flat-square)

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


## Requesting Data from the API
Unless requested, all information requested will be returned in the JSON format.

```
GET
$ curl http://localhost:3000/api/v1/groups/1/albums/4/songs | json_pp
```

Sample Response 
```

```


## API open endpoints 
| HTTP method | URI path              | Description                           |
|-------------|-----------------------|---------------------------------------|
| GET         | /groups               | Retrieves Group information           |
| GET, POST   | /artists              | Retrieves/Creates Artist information  |
| GET, POST   | /albums               | Retrieves/Creates Album information   |
| PUT         | /groups/albums/:id    | Updates Album information by Group ID |
| GET, POST   | /songs                | Retrieves/Creates Song information    |
| DELETE      | /albums/:id/songs/:id | Deletes Song from Album               |
| GET, POST   | /quotes               | Retrieves/Creates Artist Quotes       |
| GET, POST   | /labels               | Retrieves/Creates Group Labels        |
| GET         | /albums/:id/labels    | Retrieves Album release Label         |
