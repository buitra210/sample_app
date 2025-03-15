User.find_or_create_by!(email: "admin@example.com") do |user|
  user.name = "Admin User"
  user.password = "11111111"
  user.password_confirmation = "11111111"
  user.admin = true
end

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.find_or_create_by!(email: email) do |user|
    user.name = name
    user.password = password
    user.password_confirmation = password
  end
end
