# spec/tasks/cli_todos_spec.rb
require 'rails_helper'
require 'rake'

RSpec.describe 'cli_todos' do
  before(:all) do
    Rake.application.rake_require('lib/tasks/cli_todos', [Rails.root.to_s])
    Rake::Task.define_task(:environment)
  end

  describe 'cli_todos task' do
    it 'generates JSON data with the correct format' do
      expect { Rake::Task['cli_todos'].invoke }.to output(/(\{\s*"userId": 1,\s*"id": \d+,\s*"title": ".+?",\s*"completed": (true|false)\s*\},?\s*)+/).to_stdout
    end
  end
end
