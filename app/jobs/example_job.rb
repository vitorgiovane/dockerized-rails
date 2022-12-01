class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts 'Hello, my jobs!'
  end
end
