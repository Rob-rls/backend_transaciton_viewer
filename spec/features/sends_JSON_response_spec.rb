feature 'When a request is made to /' do
  scenario 'sends a JSON response' do
    visit '/'
    expect(page).to have_content '{"status":'
  end
end
