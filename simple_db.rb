require 'yaml'

# A description of the item. (e.g., title, name)
# A category or tag (genre, topic, relationship such as “friend” or “family”)
# A date (either the date when the entry was made or some other date that is meaningful, 
# like the birthday); the date may be generated or entered manually
# Other optional fields 

# command line args for
# Add a new entry
# Print the latest entry
# Print the latest entry for each category
# Print all entries sorted by a date 

# Hash Structure tests:
# db = { :record_one => { :name => "kelly", :relationship => "family" } }
# p db[:record_one][:name]

def create
  db = { 0 => { :date => Time.now.strftime("%m/%d/%y"), :title => "title", :language => "language" } }
  File.open("simple_db.yml", "w") { |f| YAML.dump(db,f) }
end  

def add_new_entry
  print "Enter title: "
  title = gets
  title.chomp!
  print "Enter language: "
  lang = gets.chomp
  result = YAML.load_file("simple_db.yml")
  record = { :date => Time.now.strftime("%m/%d/%y"), :title => title, :language => lang }
  result[result.keys[-1]+1] = record
  File.open("simple_db.yml", "w") { |f| YAML.dump(result,f) }
  puts "Added!"
end

def print_latest
  #puts "hello world"
  result = YAML.load_file("simple_db.yml")
  latest = result[result.keys[-1]]
  latest.each_key do |k|
    puts latest[k]
  end
end

def print_latest_for_category(category)
end

def print_all_by_date(chronology)
end

def usage(commands)
  puts commands
end

print "what do you want to do? "
val = gets.chomp
commands = { "add" => "add_new_entry", "print_latest" => "print_latest" }
commands.default = "usage(commands)"
eval(commands[val])
