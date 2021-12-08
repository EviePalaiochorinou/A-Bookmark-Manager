feature 'adding a Bookmark' do

    before do
        visit('/add-bookmark')
    end

    scenario 'fill in a form with a new url' do
        expect(page.has_field?("url")).to be_truthy
    end

    scenario 'checks there is a sumbit button' do
        expect(page.has_button?('Submit')).to be_truthy
    end

    scenario 'adds a bookmark' do
        fill_in "url", with: "www.facebook.com"
        click_button "Submit"
        expect(page).to have_content "www.facebook.com"
    end
  end
  