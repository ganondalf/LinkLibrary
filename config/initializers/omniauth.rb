OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'] , ENV['GOOGLE_CLIENT_SECRET'], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

# '849314944963-rv5s2rvju5kjlkhuso2tk20lj8h2h3kf.apps.googleusercontent.com'

# 'pz30UdjXfeskWUoAQ5DEsIg_'
