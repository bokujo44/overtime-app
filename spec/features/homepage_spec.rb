require 'rails_helper'

describe 'Homepage' do
  xit 'allows the employee to change the audit log status from the homepage' do
    audit_log = FactoryGirl.create(:audit_log)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    audit_log.update(user_id: user.id)

    visit root_path

    click_on("confirm_#{audit_log.id}")

    expect(audit_log.reload.status).to eq('confirmed')
  end
end