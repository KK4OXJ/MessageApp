# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MessageApp::Application.config.secret_key_base = 'e58efe2eae66dc5a5b3865963d374fadce29a82e2349516a008b2117c41075522f99b562ec6c207a45fb93c12f657c4bbab55ac39184d300579c733938bbc1b2'
