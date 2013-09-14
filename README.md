# Heroku Kit

A collection of ruby gems that we include across all of our apps that run on
heroku.

* formatted-metrics for logging metrics to STDOUT.
* collective-metrics for collecting metrics from services.
* request\_id for tracing request\_id's through systems.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'remind101-kit', github: 'remind101/heroku-kit'
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
