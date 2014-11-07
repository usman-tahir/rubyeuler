def write_note(note)
  current_time = Time.now.strftime("%D, %I:%M%p")
  File.open('notes.txt', 'a') {|f| f.write("#{current_time}\n\t#{note}\n")}
end

def read_note
  begin
    File.new('notes.txt').each_line do |line|
      puts line
    end
  rescue
    puts "There are no notes."
  end
end

if ARGV.empty?
  read_note
else
  write_note(ARGV.join(" "))
end
