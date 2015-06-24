---
title: Code
date: 2013-03-13T23:42:00+02:00
type: page
---

### /dev/null as a Service

Your developers will love our simple and well documented API.  Just do a HTTP
POST request to our shiny REST-API, and we will take care of its deletion with
our Heavily Distributed BigData Cloud Cluster Setup!

    $ curl -d @invoice.pdf -X POST http://devnull-as-a-service.com/dev/null

If you're interested in some more informations about the ongoing deletion, use:

    $ curl -v -d @photos-of-yourself.zip -X POST http://devnull-as-a-service.com/dev/null

If you're a `wget` Windows multiplatform lover, you could use:

    $ wget -O- -v --post-file=backups.tar.gz http://devnull-as-a-service.com/dev/null

You can even use the [Discard protocol](https://en.wikipedia.org/wiki/Discard_Protocol) invented in 1983 and
specified in [RFC 863](https://tools.ietf.org/html/rfc863).

    $ cat ~/invoice.pdf | nc devnull-as-a-service.com 9

Legacy, baby! Telnet interactive typewriter mode:

``` bash
$ telnet devnull-as-a-service.com 9
Escape character is '^]'.
ohai
kkthxbye
^]
telnet> quit
Connection closed.
```

### Does DaaS support python clients?

Of course! If you prefer to lose files in Python, you could use this code snippet and modify it to lose the file of your choosing:

``` python
import pycurl
curl = pycurl.Curl()
curl.setopt(curl.POST, 1)
curl.setopt(curl.URL, "http://devnull-as-a-service.com/dev/null")
curl.setopt(curl.HTTPPOST, [("file", (curl.FORM_FILE, "/root/important_file.txt"))])
curl.perform()
curl.close()
```

### Self Hosted Enterprise Appliance!

For only $5,000 per year, you get your own, self-hosted enterprise appliance.
Okay, let's be honest, it's basically a crappy Pentium 4 box with [Debian](http://debian.org)
and [nginx](http://nginx.org) installed.

The configuration looks pretty much like:

    location /dev/null {
        if ($request_method = POST ) {
          return 200;
        }
        if ($request_method = GET ) {
          return 204;
        }
    }

But we think your data is worth it.
