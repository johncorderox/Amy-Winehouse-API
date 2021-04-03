# Beach-House-API ![GitHub top language](https://img.shields.io/github/languages/top/johncorderox/Beach-House-API?style=flat-square) ![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/johncorderox/Beach-House-API/master?style=flat-square) ![GitHub](https://img.shields.io/github/license/johncorderox/Beach-House-API?style=flat-square)

This project was a self-made tutorial for Rails API's and is centered around music for my favorite band and their information. The API can call record labels, songs, albums, and active members for the band. Not only was this project made for learning purposes, but it poses a great skeleton for any music API for anyone out there.

## Prerequisites
Before you begin, ensure you have met the following requirements:
- Ruby 2.6.4
- A mac OSX machine (Mojave 10.15.7+) OR Ubuntu (16.04+)

## Installing 
Installing the API locally is easy. You can clone the repo to your desired destination: 

```bash
 cd ~/Desktop && git clone https://github.com/johncorderox/Beach-House-API.git && cd bundle install && rails db:setup && rails s
```

## Requesting Data from the API
Unless requested, all information requested will be returned in the JSON format.

```
GET
$ curl http://localhost:3000/api/v1/groups/1/albums/5/songs/1 | json_pp
```
### Sample Response

``` javascript



{
  "data": {
    "id": "3",
    "type": "songs",
    "attributes": {
        name: "Space Song",
        length: 5.54,
        album_name: "Depression Cherry",
        group_name: "Beach House"
    },
    "links": {
      "self": "/songs/3"
    }
  }
}

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

Contributing
------------
In general, we follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to tag @johncorderox so I can get notified for pull requests!
## Author

**John Cordero** © [johncorderox](https://johncorderox.com), Released under the [MIT](./LICENSE) License.<br>

> Blog [@jc](https://johncorderox.com) · GitHub [@johncorderox](https://github.com/metowolf) ·
