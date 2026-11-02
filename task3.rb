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

puts "Оберіть критерій сортування:"
puts "1 - за назвою рецептури"
puts "2 - за ціною"
print "Ваш вибір (1 або 2): "
choice = gets&.chomp
choice = "1" if choice.nil? || choice.strip.empty?

puts "\nОбрано сортування: #{choice == '2' ? 'за ціною' : 'за назвою'}"

puts "\nСпосіб 1 (використання sort_by):"
sorted1 = if choice == "2"
  cosmetics.sort_by { |_, price| price.to_f }
else
  cosmetics.sort_by { |name, _| name }
end

sorted1.each do |name, price|
  puts "#{name}: #{price.nil? ? 'не вказано' : "#{price} грн"}"
end

puts "\nСпосіб 2 (використання sort та оператора <=>):"
sorted2 = if choice == "2"
  cosmetics.sort { |a, b| a[1].to_f <=> b[1].to_f }
else
  cosmetics.sort { |a, b| a[0] <=> b[0] }
end

sorted2.to_h.each do |name, price|
  puts "#{name} => #{price.inspect}"
end
