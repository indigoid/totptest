# Totptest

Minimal example of a Sinatra web service that generates a TOTP QR code and verifies TOTP codes.

## Installation

    $ gem install totptest

## Usage

    $ totptest

Then connect to it and follow the links to try stuff: http://localhost:4567/ 

Check validity of a TOTP value (123456 in this case) on the commandline:

    $ curl -sXPOST --data totp=123456 localhost:4567/validate | grep ok
      <p>TOTP code 123456 was not ok. <a href="/check">Try again</a></p>

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/indigoid/totptest.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

