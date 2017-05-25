require 'rails_helper'

describe 'Blog' do
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

    click_link 'New Blog'
    fill_in 'Title', with: blog.title
    fill_in 'Body', with: blog.body
    click_button 'Create Blog'

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

    click_link 'Edit'
    fill_in 'Title', with: 'New Post'
    click_button 'Update Blog'

    expect(page).to have_content('New Post')
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
