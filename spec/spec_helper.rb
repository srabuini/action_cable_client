# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

require 'pry-byebug' # binding.pry to debug!

# Coverage
ENV['CODECLIMATE_REPO_TOKEN'] = 'a36151a91a3f70083cbdb99e00dbf75ca91cafb910ad38d0e413c84063872f32'
require 'simplecov'
SimpleCov.start

# This Gem
require 'action_cable_client'

Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each { |file| require file }

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec::Expectations.configuration.warn_about_potential_false_positives = false
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
