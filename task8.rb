cosmetics1 = {
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

puts "Спосіб 1 (використання ітератора each):"
cosmetics1.each do |name, price|
  if price.nil? || price == 0
    puts "Знайдено засіб без ціни: '#{name}' (значення: #{price.inspect})"
    print "Введіть ціну для '#{name}': "
    input = gets&.chomp
    new_price = (input.nil? || input.strip.empty?) ? 110.0 : input.to_f
    puts new_price if input.nil? || input.strip.empty?
    cosmetics1[name] = new_price
  end
end

puts "\nОновлений хеш після введення цін:"
cosmetics1.each do |name, price|
  puts "#{name}: #{price} грн"
end

puts "\n--------------------------------------------------"

cosmetics2 = {
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

puts "Спосіб 2 (використання ітераторів select та each_key):"
without_price = cosmetics2.select { |_, price| price.nil? || price == 0 }

if without_price.any?
  puts "Кількість засобів без ціни: #{without_price.size}"
  without_price.each_key do |name|
    print "Введіть нову ціну для '#{name}': "
    input = gets&.chomp
    new_price = (input.nil? || input.strip.empty?) ? 115.0 : input.to_f
    puts new_price if input.nil? || input.strip.empty?
    cosmetics2[name] = new_price
  end
else
  puts "Усі засоби мають задану ціну."
end

puts "\nОновлений хеш:"
cosmetics2.each do |name, price|
  puts "#{name} => #{price} грн"
end
