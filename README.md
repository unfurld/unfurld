# Unfurld - A microservice to unfurl links

Unfurld is a microservice to unfurl links ([like in Slack](https://medium.com/slack-developer-blog/everything-you-ever-wanted-to-know-about-unfurling-but-were-afraid-to-ask-or-how-to-make-your-e64b4bb9254)). It handles wrangling with the multiple standards for embedding information about web pages: oEmbed, Twitter Cards, Facebook Open Graph, HTML meta tags.

**TODO**: Add note saying that this can be either self-hosted or bought on unfurld.io

## Example

Given a link to a youtube video like `https://www.youtube.com/watch?v=vUSzL2leaFM`, Unfurld will return the following response:

```json
[
    {
        "url": "https://www.youtube.com/watch?v=vUSzL2leaFM",
        "domain": "www.youtube.com",
        "title": "Eric Clapton - Wonderful Tonight (Official Live Video)",
        "description": "\"Wonderful Tonight (Live)\" by Eric Clapton from Slowhand, available now. Download on iTunes: http://bit.ly/YuBzqm Connect With Eric Clapton: Website: http://...",
        "icon": "https://www.youtube.com/yts/img/favicon_144-vflWmzoXw.png",
        "primary_image": {
            "url": "https://i.ytimg.com/vi/vUSzL2leaFM/maxresdefault.jpg",
            "score": 777,
            "width": 1280,
            "height": 720,
            "format": "image/jpeg"
       },
       "images": [
            {
                "url": "https://www.youtube.com/yts/img/pixel-vfl3z5WfW.gif",
                "score": 0,
                "width": 1,
                "height": 1,
                "format": "image/gif"
            },
            {
                "url": "https://i.ytimg.com/vi/vUSzL2leaFM/maxresdefault.jpg",
                "score": 777,
                "width": 1280,
                "height": 720,
                "format": "image/jpeg"
            }
       ],
       "status": 200
    }
]
```

This can be used to render a preview as such:

**TODO: Insert Image**

## Installation

### Install using `RubyGems`

Coming soon.

### Install using `docker`

Coming soon.

### Install using `Heroku`

Just click the button below to deploy Unfurld to heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/heroku/node-js-sample)

Alternatively, clone the project and run:

```bash
$ heroku apps:create
$ git push heroku master
```

## Usage

**TODO:** Link to API docs
