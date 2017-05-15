@user = User.create(email: "gaga@gaga.com", password: "123456", password_confirmation: "123456", first_name: "gaga", last_name: "gaga")

puts "1 User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
