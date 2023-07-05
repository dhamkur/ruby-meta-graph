# Ruby Meta Graph

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/dhamkur/ruby-meta-graph/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/dhamkur/ruby-meta-graph/tree/main)

Ruby for Meta Graph API. Features:

1. Easy setup
2. Response object
3. Custom permission
4. Latest version of Meta Graph API

How to install:

```sh
gem install ruby_meta_graph
```

How to use:

```sh
permission = "id,name,email,birthday"
your_token = ENV[TOKEN]
response   = RubyMetaGraph.new(permission, your_token).run

# The responses will be base on permission you allowed
response.id
response.name
response.email
response.birthday
```

## Credits

Made base on my use case to keep the large application maintainable by separate the service. [Adham Kurniawan](https://github.com/dhamkur)
