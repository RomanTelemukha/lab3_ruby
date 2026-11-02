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

indexed1 = cosmetics.to_a

puts "Спосіб 1 (використання to_a):"
p indexed1
puts "Виведення з індексами:"
indexed1.each_with_index do |item, index|
  puts "#{index}: #{item[0]} => #{item[1].inspect}"
end

puts "\nСпосіб 2 (використання map):"
indexed2 = cosmetics.map { |name, price| [name, price] }
indexed2.each_with_index do |(name, price), index|
  puts "[#{index}] #{name}: #{price.nil? ? 'не вказано' : "#{price} грн"}"
end
