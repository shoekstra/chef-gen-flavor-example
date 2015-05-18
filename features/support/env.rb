if ENV['COVERAGE']
  require 'simplecov'
end

require 'aruba/cucumber'
require 'chef_gen/flavors/cucumber'

# Travis runs tests in a limited environment which can take a long time to invoke
# commands.  Up the timeout when we're in a travis build based on the environment
# variable set in .travis.yml
if ENV['TRAVIS_BUILD']
  Before do
    @aruba_timeout_seconds = 15
  end
end