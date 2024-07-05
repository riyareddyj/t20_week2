REGEX_PATTERN = /^(.+)@(.+)$/ 

def validate_email(email)
  if email =~ REGEX_PATTERN
    true
  else
    false
  end
end

# puts validate_email("alice.bob@example.com")
# puts validate_email("alice.bob")