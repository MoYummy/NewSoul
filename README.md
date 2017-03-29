# NewSoul

.NET Solution Parser for Ruby (initiated by https://github.com/jthigpen/soul)

## Installation

Add this line to your application's Gemfile:

~~~ ruby
gem 'new_soul', :git => 'https://github.com/moyummy/newsoul.git'
~~~

And then execute:

    $ bundle install

## Usage

~~~ ruby
require 'bundler/setup'
require 'new_soul'

solution = NewSoul.parse 'your_solution.sln'
~~~

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MoYummy/newsoul. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

