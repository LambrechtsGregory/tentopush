# Tentopush

This gem allows you to send push messages very easy via the 10ToPush webserver API.

## Installation

Add this line to your application's Gemfile:

    gem 'tentopush'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tentopush	

## Usage

This gem is a very simple way to communicate with the 10topush server's API. The only thing you need is the correct app data obtained from 10to1. First method initialises the gem. Replace the PACKAGE_NAME en SECRET_KEY with the corresponding initialisers. 

	@tentopush = Tentopush.new(PACKAGE_NAME, SECRET_KEY)

Now you're all set to start sending push messages. If you want to reach all users of one app just pass along the message:

	@tentopush.send_push(MESSAGE)

If you want to reach specific users, you pass along their unique apids as well. 

	@tentopush.send_push(MESSAGE, UNIQUE_APIDS)

## Author

Gregory Lambrechts, lambrechts_gregory@hotmail.com

## License

tentopush is available under the MIT license. See the LICENSE file for more info.

=======
tentopush
========

Development version of a ruby gem allowing communication with the 10topush service.