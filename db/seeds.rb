# Clear existing records
Greeting.destroy_all

# Seed with five greetings
5.times do |i|
  Greeting.create(message: "Greetings #{i + 1}")
end

