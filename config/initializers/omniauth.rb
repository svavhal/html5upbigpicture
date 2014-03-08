Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '586181561473287', '9e3f52bb2395dc62cfe2a1d3660a76e5'
end