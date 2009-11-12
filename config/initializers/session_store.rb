# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_songsapp_session',
  :secret      => '4765e15992f9072ae420f8b1db46d78cdaa95b9fa186f6101483b8c70f66e309eef24ab77ad56ccfd35d75d8be1d9fdfd5dc695fdcc51e4d633c0e4fecbf6462'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
