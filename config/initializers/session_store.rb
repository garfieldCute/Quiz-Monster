# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Quiz-Monster_session',
  :secret      => '69a987644bdccb0f20a5af63a0c4d0a44e04193db3c01d6c70c11dca8d9c8ee98efa378cf42fb1bda635443142dc44f0b57526fd65839237228bb7b0fa89b573'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
