# Colatra

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/colatra`. To experiment with that code, run `bin/console` for an interactive prompt.

The present gem has been created with the purpose of allowing language translation into Rails applications in an easy and convenient way.

All you need to do is add the gem to your Gemfile, run bundle install and customise your code to your application own needs.

The code will need a view that calls the user for input (the text to be translated and the languages involved). it will also need another view to display the translated text in the secondary language selected.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'colatra'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install colatra

## Usage


The gem uses the Google Translate API to perform translationg

The gem includes 2 methods: one to display all the supported languages in Google Translate. All you have to do is create a controller and a view to display it. The controller can be empty.

The second method includes all the necessary code to process the users text and translate it into the desired language.

The view should prompt users for a text and for a language to translate into. The language should be input in a form. The format should be the same displayed by the first method described above.

Once the translation has been performed, the gem will display the translated text and it will display the origin language it has identified by default.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/olimpiamel/createcode.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
