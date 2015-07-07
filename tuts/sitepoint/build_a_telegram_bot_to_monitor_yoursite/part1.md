# Build a Telegram bot to monitor your site

Telegram is a message platform which is similar to Hipchat or Slack, but
with an emphasis in security and an open source spirit. Recently, they
launched a bot API which enable us to easily write bot that interact
with Telegram to receive and send message. This BOT API allows us to
interact with Telegram via HTTP easily. 

Let's leverage this and build a bot that monitor multiple website and
will send us a message on telegram whenever our websites stop
responding.

At the end of the articles, you should have a bot that allow you do
those thing:

You send this message to @monitorbot

```
@monitorbot /monitor www.axcoto.com
```

And it responds:

```
@monitorbot Boss, I started to monitor www.axcoto.com
```

Note that during the tutorial, I use the bot name `watchdog_bot`. You
have to replace it with your own name because the name is taken by me
:D.

# Step 1. Get the Telegram Token:

Most of information about API can be viewed here:
`https://core.telegram.org/bots/api`. We can acquire the token using

https://core.telegram.org/bots#botfather

Once you grab the token, let's save them into a file `env.sh`

```
export TELEGRAM_TOKEN="token"
```

We use enviroment variable here so later on we can access it easily
without the hassle of parsing any configuration file. 


Now, let's get to the real code.

```
package main
import (

)
```

Telegram has two ways to get updates. The simpler way is `getUpdates`
which use long polling. We make a HTTP request and Telegram blocked
until we get new updates or the timeout expired. The second way is using
webhook: we tell Telegram to ping an specified URL whenever a message is
sent to our bot. To keep thing simple, let's use long polling.


```
```
