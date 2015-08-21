### Thor là gì?
**Thor** use to write command-line interfaces. Like as you see command on github:
```
git branch -b
git push -f
git commit -m
...
```
### Find out Thor
Write method define command-line at cli.rb

Basic example:

```
require 'thor'

class Cli < Thor
# desc: Describle for command-line you will write
  desc "hello NAME", "say hello"
  option :old
  # Method use to print Hello #{name}} when we type command line on terminal
  def hello(name)
    puts "Hello, I'm #{name}. I'm #{options[:old]} years old" if options[:old]
    puts "Hello, I'm #{name}" unless options[:old]
  end
end

# To start we need to call via start method's Thor
Cli.start(ARGV)
```
**The way to start at terminal:**
```
# Don't use option
ruby cli.rb hello "My Mai"

# Use option
ruby cli.rb hello "My Mai" --old "23"
```
