require "dotenv"

Dotenv.load

require "collegiate_directories"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.default_formatter                    = :doc if config.files_to_run.one?
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.order                                = :random
  config.shared_context_metadata_behavior     = :apply_to_host_groups
  config.warnings                             = true

  config.disable_monkey_patching!
  config.filter_run_when_matching :focus

  Kernel.srand config.seed
end
