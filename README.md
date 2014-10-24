# Chef cookbook for Blafire

[![Build Status](https://travis-ci.org/odolbeau/cookbook-blackfire.png)](https://travis-ci.org/odolbeau/cookbook-blackfire)

## Description

Chef cookbook for [blackfire](https://blackfire.io/).

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

License & Authors
-----------------
- Author:: Olivier Dolbeau (odolbeau@gmail.com)

```text
Copyright 2014, Olivier Dolbeau

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
