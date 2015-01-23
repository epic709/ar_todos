require 'csv'
require 'faker'
require_relative '../app/models/todo'

# class TodosImporter
#   def self.import(filename=File.dirname(__FILE__) + "/../db/data/todos.csv")
#     csv = CSV.new(File.open(filename), :headers => true)
#     csv.each do |row|
#       hash = {}
#       row.each do |field, value|
#         hash[field] = value
#       end
#       Todo.create(hash)
#     end
#   end
# end

class TodosFaker
  def self.import
    10.times do
      hash = {}
      hash[:complete] = false
      hash[:desc] = Faker::Lorem.sentence(3, true, 4)
      Todo.create(hash)
    end
  end
end

TodosFaker.import