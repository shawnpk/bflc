require 'rails_helper'

describe 'Article' do
  let(:user) { FactoryGirl.create :user }
  let!(:blog) { FactoryGirl.create :blog }

  it 'shows the users email after login' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(blogs_path)
    expect(page).to have_content(user.email)
  end

  it 'can be created' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(blogs_path)

    click_link 'New Article'
    fill_in 'Title', with: blog.title
    fill_in 'Body', with: blog.body
    click_button 'Create Article'

    expect(page).to have_content(blog.body)
  end

  it 'can be edited' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(current_path).to eq(blogs_path)
    expect(page).to have_content(blog.title)

    click_link blog.title

    expect(current_path).to eq(blog_path(blog))

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

    expect(current_path).to eq(blogs_path)
    expect(page).to have_content(blog.title)

    click_link blog.title

    expect(current_path).to eq(blog_path(blog))

    click_link 'Delete'

    expect(current_path).to eq(blogs_path)
    expect(page).not_to have_content(blog.body)
  end
end
