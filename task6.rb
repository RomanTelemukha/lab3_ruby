cosmetics = {
  "Мило" => 45.0,
  "Крем" => 120.0,
  "Тонік" => 150.0,
  "Скраб" => 95.0,
  "Шампунь" => 180.0,
  "Сироватка" => 320.0,
  "Бальзам для губ" => 80.0,
  "Маска для обличчя" => 210.0,
  "Гель для вмивання" => 0.0,
  "Лосьйон після гоління" => nil
}

print "Введіть назву косметичного засобу: "
query = gets&.chomp
query = "Крем" if query.nil? || query.strip.empty?
puts query

puts "\nСпосіб 1 (використання key? та []):"
if cosmetics.key?(query)
  price = cosmetics[query]
  puts "Рецептуру '#{query}' знайдено. Ціна: #{price.nil? ? 'не вказано' : "#{price} грн"}"
else
  puts "Рецептуру '#{query}' не знайдено в базі."
end

puts "\nСпосіб 2 (використання fetch):"
price = cosmetics.fetch(query, :not_found)
if price != :not_found
  puts "Рецептуру '#{query}' знайдено. Ціна: #{price.nil? ? 'не вказано' : "#{price} грн"}"
else
  puts "Рецептуру '#{query}' не знайдено в базі."
end
