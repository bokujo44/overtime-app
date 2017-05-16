
@user = User.create(email: "gaga@gaga.com", password: "123456", password_confirmation: "123456", first_name: "Gaga", last_name: "Gaga")

puts "1 User created"

AdminUser.create(email: "gaga@gaga.com", password: "123456", password_confirmation: "123456", first_name: "Gaga", last_name: "Gaga")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"
