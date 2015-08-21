require 'thor'
class Cli < Thor
  desc "hello NAME", "say hello"
  option :old
  def hello(name)
    puts "Hello, I'm #{name}. I'm #{options[:old]} years old" if options[:old]
    puts "Hello, I'm #{name}" unless options[:old]
  end
end

Cli.start(ARGV)
