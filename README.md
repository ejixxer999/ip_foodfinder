

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ip_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ip_finder

## Usage

IP_Finder was created to take in the users specific location data based on 'lon' 'lat' and display a list of restaurants. The restaurants displayed are within 1 mile of the user and are not displayed in any order. Along with displaying the restaurants name, the address, phone number, price range, and type of food served is also shown. NOTE(not every choice has updated data on certine information). IP_finder can also show the users current location by City, and State, along with timezone. 

NOTES*
range is shown by '$'. The more '$' the more expensive it is 
food type is shown by country of origin first and then food style second. 

To run gem please have the list of gems preinstalled(see GEMFILE). 
to start the gem run bin/run (permissions are open)

## API's
Two API's where used for development of this gem. 
The first API is called IP Geolocation from ip-api.com. This API is used to pull the location, and timezone of the user through their ip address.
This information was then passed on to the first, and second option for the user to view. Also the Longitude and latitude data was passed on to the second API.
The second API is called Menuapi.XYZ from rapidapi.com. This API is used to gather the information of available restaurants with in a one mile radius of the user. 
The information is gathered using the coordinates of the users location provided by the first API. 



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ip_finder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IpFinder project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ip_finder/blob/master/CODE_OF_CONDUCT.md).
