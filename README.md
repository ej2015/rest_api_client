# VendorApiClient

A client to subclass from, this gem implements the common HTTP verbs using Faraday to help reduce boiler plates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rest_api_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rest_api_client

## Usage

Create your own client by subclassing RrestApiClient. Then you can use the HTTP verbs like this:

```
post(path, body: payload, params: params)

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ej2015/rest_api_client.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
