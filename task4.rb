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

puts "Спосіб 1 (використання sort_by та first):"
shortest_sort = cosmetics.sort_by { |name, _| name.length }.first(3)
shortest_sort.each do |name, price|
  puts "#{name} (довжина: #{name.length}) - #{price} грн"
end

puts "\nСпосіб 2 (використання min_by):"
shortest_min = cosmetics.min_by(3) { |name, _| name.length }
shortest_min.each do |name, price|
  puts "#{name} (довжина: #{name.length}) - #{price} грн"
end
