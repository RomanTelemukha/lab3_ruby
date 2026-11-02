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

puts "Спосіб 1 (літерал хешу):"
cosmetics1.each do |name, price|
  puts "#{name}: #{price.nil? ? 'не вказано' : "#{price} грн"}"
end

puts "\nСпосіб 2 (використання Hash.new):"
cosmetics2 = Hash.new
cosmetics1.each do |name, price|
  cosmetics2[name] = price
end

cosmetics2.each do |name, price|
  puts "#{name} => #{price.inspect}"
end
