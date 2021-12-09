feature 'adding a Bookmark' do

    before do
        visit('/add-bookmark')
    end

    scenario 'fill in a form with a new url' do
        expect(page.has_field?("url")).to be_truthy
        expect(page.has_field?("title")).to be_truthy
    end

    scenario 'checks there is a sumbit button' do
        expect(page.has_button?('Submit')).to be_truthy
    end

    scenario 'adds a bookmark' do
        fill_in("url", with: "http://www.facebook.com")
        fill_in("title", with: "facebook")
        click_button("Submit")

        expect(page).to have_link('facebook', href: 'http://www.facebook.com')      
    end
  end
  