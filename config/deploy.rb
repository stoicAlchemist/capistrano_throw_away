# frozen_string_literal: true

task :hello do
  puts 'hello'
  goodbye
end

task :goodbye do
  puts 'goodbye'
end

namespace :testing do
  task :one do
    puts 'this is task one'
    puts real_revision
  end

  task :two do
    puts 'this is task two'
    testing.one
  end
end
