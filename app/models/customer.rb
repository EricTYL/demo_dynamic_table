class Customer < ApplicationRecord
  def self.create_fake_data
    temp_items_hash = {}
    x = Random.new

    x.rand(1..5).times do
      xx = Random.new
      serial_num = xx.rand(1..5)
      key = "item_#{serial_num}".to_sym
      temp_items_hash[key] = Faker::Music.instrument if temp_items_hash[key].nil?
    end

    create(name: Faker::App.author, age: Faker::Number.number(2).to_i, items: temp_items_hash)
  end

  def self.count_teenagers
    where("customers.customer->>'age' <= '18'").count
  end
end
