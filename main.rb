require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

input = ARGV
case(input.shift)
when 'list'
  Todo.all.each do |l|
    puts "#{l.id}. [#{l.complete == true ? 'X' : ' '}] #{l.desc}"
  end
when 'add'
  Todo.create({:complete => false, :desc=>input.join(' ')})
  puts "Appended \"#{Todo.last.desc}\" to your TODO list"
when 'delete'
  puts "Deleted \"#{Todo.find(input).shift.desc}\" from your TODO list"
  Todo.delete(input)
when 'complete'
  Todo.update(input.first, complete: true)
  puts "Task \"#{Todo.find(input).shift.desc}\" has been marked COMPLETED"
else
  puts "Invalid command!!!"
end