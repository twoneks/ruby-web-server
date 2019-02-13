# RUBY-WEB-SERVER

Simply serve your static file through a ruby web server in Docker with one command.

Run the following command in the folder you want to be served through the web server:

```bash
  docker run --rm -v `pwd`:/ruby-public-folder -p 5000:5000 -d ruby-web-server
```

Visit your [localhost](http://localhost:5000)
