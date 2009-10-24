# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ranking_session',
  :secret      => '629084cdec4d7ad2acb3f977670179445d4d1f8d407817616f28ba109ef4661a3484072a57b9257ba01eb77bed0158554446d78d5ed8e3fd1f5f2a9db2b19385'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
