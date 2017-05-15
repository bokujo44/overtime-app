FactoryGirl.define do
        sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Gaga'
    last_name 'Gaga'
    email "gaga@gaga.com"
    password "123456"
    password_confirmation "123456"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email "admin@user.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end