require 'rails_helper'

RSpec.describe "books/index.html.erb", type: :view do

    describe 'index.html.erbのテスト' do
        it 'h1タグのBooks#indexが表示されているかどうか' do
        get "/index"
        expect(page).to have_selector( text: 'Books#')
    end
  end
end
