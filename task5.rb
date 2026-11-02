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

puts "Спосіб 1 (використання select та sort_by):"
cheapest1 = cosmetics.select { |_, price| !price.nil? && price > 0 }
                     .sort_by { |_, price| price }
                     .first(5)

cheapest1.each do |name, price|
  puts "#{name}: #{price} грн"
end

puts "\nСпосіб 2 (використання reject та min_by):"
cheapest2 = cosmetics.reject { |_, price| price.nil? || price <= 0 }
                     .min_by(5) { |_, price| price }

cheapest2.each do |name, price|
  puts "#{name} => #{price} грн"
end
