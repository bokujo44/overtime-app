require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do
    xit 'can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end
end
