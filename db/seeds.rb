def user
  u = FactoryGirl.create(:user)
  puts "\nCreated user {email: #{u.email}, password: #{u.password}}"
  u
end

def admin
  a = FactoryGirl.create(:user, :admin)
  puts "\nCreated admin {email: #{a.email}, password: #{a.password}}"
  a
end

def category(user, type)
  c = FactoryGirl.create(:category, user: user, category_type: type)
  puts "\nCreated category {name: #{c.category_name}, type: #{c.category_type}} belonging to #{user.email}"
  c
end

def currency
  c = FactoryGirl.create(:currency)
  puts "\nCreated currency {code: #{c.currency_code}, name: #{c.currency_name}}"
  c
end

def transaction(user, category, currency)
  t = FactoryGirl.create(:transaction, user: user, category: category, currency: currency)
  puts "\nCreated transaction {description: #{t.description}, user: #{user.email}, category_type: #{category.category_type}, currency: #{currency.currency_code}}"
  t
end

u = user
admin
income = category(u, 'income')
expense = category(u, 'expense')
c = currency
10.times { transaction(u, income, c) }
10.times { transaction(u, expense, c) }
