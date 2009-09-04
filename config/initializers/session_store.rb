# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tutor_session',
  :secret      => '86f8aa382a039dd4af1e714ef21598f326a07d7037f6019720d07f1c82f8576c213043d76a6d8e15227bd3d3bffa5906d7ff2996e402b430d9b852d3c4a922ff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
