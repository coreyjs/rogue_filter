[![Build Status](https://travis-ci.org/corey-rb/rogue_filter.svg?branch=master)](https://travis-ci.org/corey-rb/rogue_filter)


# RogueFilter
Rogue Filter makes it easy to add scopes to ActiveRecord models.  This is helpful when chaining together multiple scopes on models that have many search parameters.

## Usage
model.rb
```ruby
scope :rogue_name, -> (name) { where name: name }
```

All custom scopes that you want to get called must be prefixed with `rogue_`.

controller.rb
```ruby
Car.filterable({name: 'Roguefilter'})
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rogue_filter'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rogue_filter
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
