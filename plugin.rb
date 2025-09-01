# name: discourse-wallet-login
# about: Adds "Login with Wallet" button (header + login modal fallback)
# version: 0.1
# authors: NewRussia
# url: https://github.com/NRT314/discourse-wallet-login

enabled_site_setting :wallet_login_enabled

register_asset "stylesheets/common/wallet.scss"
register_asset "javascripts/discourse/templates/connectors/login-after-login-buttons/wallet-login.hbs"

after_initialize do
  # no server-side code required now
end
