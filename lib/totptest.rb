require "totptest/version"
require 'sinatra/base'
require 'rotp'
require 'rqrcode_png'

module TOTPTest
  class TOTPTest < Sinatra::Base
    configure do
      set :server, :puma
      totp = ROTP::TOTP.new(ROTP::Base32::random_base32, issuer: "totptest")
      qr = totp.provisioning_uri(ENV['LOGNAME'] || ENV['USER'] || 'anonymous')
      set :totp, totp
      set :png, RQRCode::QRCode.new(qr, :size=>12).to_img.resize(400,400)
    end

    get '/now' do
      settings.totp.now
    end

    get '/check/:totp' do
      check = params['totp']
      ok = settings.totp.verify(check) ? "ok" : "not ok"
      "totp code #{check} was #{ok}"
    end

    get '/qr' do
      content_type 'image/png'
      headers 'Content-Disposition' => 'inline;filename="qr.png"'
      settings.png.to_string
    end
  end
end
