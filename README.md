# Totptest

Minimal example of a Sinatra web service that generates a TOTP QR code and verifies TOTP codes.

## Installation

    $ gem install totptest

## Usage

    $ totptest

Then connect to it on `localhost:4567`

Retrieve a PNG file containing a QR code:

  $ curl localhost:4567/qr > qr.png 

Get the current TOTP value:

  $ curl localhost:4567/now
  123456

Check validity of a TOTP value (123456 in this case)

  $ curl localhost:4567/check/123456
  totp code 123456 was ok

  $ sleep 30

  $ curl localhost:4567/check/123456
  totp code 123456 was not ok

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/indigoid/totptest.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

