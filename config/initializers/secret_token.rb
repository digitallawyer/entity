# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Entity::Application.config.secret_key_base = 'e8b3f29b7eaf3bce4375ec726ac527df161658a4709872027b3f023a65232f8ce8baf725780e68d7f564078095402a342b7040d974f9e5ef3bab811882ef9a39'
