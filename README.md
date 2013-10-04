# Rubybody

Rubybody provides calculations like TDEE, BMR and food calorie calculations

## Installation

Add this line to your application's Gemfile:

    gem 'rubybody'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubybody

## Usage

```ruby
person = Rubybody::Person.new(81, 188, 25, :male)
person.bmr #=> 1816
person.tdee #=> 2180

food = Rubybody::Food.new(10,5,2)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
