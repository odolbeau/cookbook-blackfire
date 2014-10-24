# Chef cookbook for Blafire

[![Build Status](https://travis-ci.org/odolbeau/cookbook-blackfire.png)](https://travis-ci.org/odolbeau/cookbook-blackfire)

## Description

Chef cookbook for [blackfire](https://blackfire.io/).

### Platform

* Debian
* Ubuntu

**Notes**: This cookbook has been tested on Debian 7.6. It may work on other
platforms with or without modification. Please [report
issues](https://github.com/odolbeau/cookbook-blackfire/issues) on any
additional platforms so they can be added.

## Usage

### blackfire::default

Just include `blackfire` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[blackfire]"
  ]
}
```

And override this 2 attributes with your own credentials:

```ruby
node['blackfire']['agent']['server-id'] = 'my_server_id'
node['blackfire']['agent']['server-token'] = 'my_server_token'
```

## Tests

To launch tests, you need to use your `server-id` & `server-token` as it's
mandatory t start the blackfire agent.

## Supermarket share

    knife supermarket share blackfire "Monitoring & Trending"

## License

This cookbook is released under the MIT License. See the bundled LICENSE file
for details.
