# # encoding: utf-8

# Inspec test for recipe iis::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe port(80) do
  it { should be_listening }
end

describe command('curl localhost') do
  its('stdout') { should match (/Hello, world!/) }
end
