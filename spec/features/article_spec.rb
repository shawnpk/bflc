require 'rails_helper'

describe 'Article' do
  let(:user) { FactoryGirl.create :user }
  let!(:article) { FactoryGirl.create :article }

  it 'show all articles on index page' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(articles_path)
    expect(page).to have_content(article.title)
  end

  it 'can be created' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(articles_path)

    click_link 'New Article'
    fill_in 'Title', with: article.title
    fill_in 'Content', with: article.body
    click_button 'Create Article'

    expect(page).to have_content(article.body)
  end

  it 'can be edited' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(articles_path)
    expect(page).to have_content(article.title)

    click_link article.title

    expect(current_path).to eq(article_path(article))

    click_link 'Edit Article'
    fill_in 'Title', with: 'New Article'
    click_button 'Update Article'

    expect(page).to have_content('New Article')
  end

  it 'can be destroyed' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(articles_path)
    expect(page).to have_content(article.title)

    click_link article.title

    expect(current_path).to eq(article_path(article))

    click_link 'Delete'

    expect(current_path).to eq(articles_path)
    expect(page).not_to have_content(article.body)
  end
end
