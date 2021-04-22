# Amy Winehouse API ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/johncorderox/Amy-Winehouse-API?style=flat-square) ![GitHub closed issues](https://img.shields.io/github/issues-closed/johncorderox/Amy-Winehouse-API?style=flat-square) ![GitHub last commit](https://img.shields.io/github/last-commit/johncorderox/Amy-Winehouse-API?style=flat-square) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/johncorderox/Amy-Winehouse-API?style=flat-square)
<p align="center">
  <img src="/readme.png" width="250" title="hover text">
</p>


This project was a self-made API since I truly love the music of Amy. The API can call record labels, songs, albums, and active members for the band. Not only was the project pushed myself to learn more about RESTful development, it also makes other programmers who lover her music the ability to collaborate.

## Prerequisites
Before you begin, ensure you have met the following requirements:
- Ruby 2.6.4
- A mac OSX machine (Mojave 10.15.7+) OR Ubuntu (16.04+)

## Installing
Installing the API locally is easy. You can clone the repo to your desired destination:

```bash
 cd ~/Desktop && git clone https://github.com/johncorderox/Amy-Winehouse-API.git && cd bundle install && rails db:drop && rails db:create && rails db:migrate && rails db:seed && rails s
```

## Requesting Data from the API
Unless requested, all information requested will be returned in the JSON format.

```bash
GET
$ curl -H "X-Api-Key: YOUR_API_KEY_HERE" http://localhost:3000/api/v1/artists/1 | json_pp
```
### Sample Response

``` javascript
{
  id: 1,
  name: "Amy Winehouse",
  date_of_birth: "September 14, 1983",
  date_of_death: "July 23, 2011",
  bio: "Much can be said about the late Amy Winehouse, one of the U.K.'s flagship vocalists during the 2000s. The British press and tabloids seemed to focus on her rowdy behavior, heavy consumption of alcohol, and tragic end, but fans and critics alike embraced her rugged charm, brash sense of humor, and distinctively soulful and jazzy vocals. Her platinum-selling breakthrough album, Frank (2003), elicited comparisons ranging from Billie Holiday and Sarah Vaughan to Macy Gray and Lauryn Hill. Interestingly enough, despite her strong accent and vernacular, one can often hear aspects of each of those singers' vocal repertoires in Winehouse's own voice. Nonetheless, her allure had always been her songwriting -- almost always deeply personal but best known for its profanity and brutal candor.",
  cause_of_death: "Alcohol Poisoning",
  education: "Sylvia Young Theatre School",
  website: "https://www.amywinehouse.com/",
  press_photo: "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--52bcdcc7cdf03a5dff567e1e9cba592d859fb170/press.png",
  signature: "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--65d28fd11fcd10c85a769833e0fbe01e9effd123/signature.png",
  quotes: [],
  albums: [],
  songs: []
}
```


## API open endpoints

The AW-API contains mostly nested routes when using an API Key. You may consult the `root controller` of the API to determine proper data retrieval.

```ruby
information = {
  artist: "/api/v1/artists/(.:format(:id))",
  albums: "/api/v1/artists/(.:format(:id)/albums",
  songs: "/api/v1/artists/(.:format(:id)/albums/(.:format(:id)/songs",
  record_labels: "/api/v1/artists/(.:format(:id)/albums/(.:format(:id)/record_labels",
  quotes: "/api/v1/artists/(.:format(:id)/quotes",
  messages: "/api/v1/messages"
}
```

| HTTP method | URI path              | Description                           |
|-------------|-----------------------|---------------------------------------|
| GET         | /artists/:id          | Retrieves Artist information          |
| GET         | /albums               | Retrieves Album information           |
| GET         | /songs                | Retrieves/Creates Song information    |
| GET         | /quotes               | Retrieves/Creates Artist Quotes       |
| GET         | /labels               | Retrieves Record Labels               |
| GET         | /messages             | Retrieves Messages                    |

Contributing
------------
In general, we follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to tag @johncorderox so I can get notified for pull requests!

## LICENSE
```
BSD 2-Clause License

Copyright (c) 2021, John Cordero
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.
   ```

## Author

**John Cordero** © [johncorderox](https://johncorderox.com), Released under the [MIT](./LICENSE) License.<br>

> Blog [@jc](https://johncorderox.com) · GitHub [@johncorderox](https://github.com/metowolf) ·
