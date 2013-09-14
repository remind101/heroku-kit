# Heroku Kit

An opinionated collection of middleware for Ruby apps running on Heroku.

* [rack-timeout](https://github.com/kch/rack-timeout) for timing out long
  running requests.
* [formatted-metrics](https://github.com/remind101/formatted-metrics) for logging metrics to STDOUT.
* [collective](https://github.com/remind101/collective-metrics) for collecting metrics from services.
* [request\_id](https://github.com/remind101/request_id) for tracing request\_id's through systems.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heroku-kit', github: 'remind101/heroku-kit'
```

## Usage

### Rails

You're done!

### Rack

Add the middlewares:

```ruby
use Rack::Timeout
use Rack::RequestId
use Rack::Instrumentation
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
