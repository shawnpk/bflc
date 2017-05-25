require 'rails_helper'

describe 'Index navigation can reach' do
  it 'the index page' do
    visit root_path

    expect(page.status_code).to eq(200)
  end

  it 'the about the firm page' do
    visit root_path

    click_link 'About the Firm'

    expect(page.status_code).to eq(200)
  end

  it 'the partners page' do
    visit root_path

    click_link 'Partners'

    expect(page.status_code).to eq(200)
  end

  it 'the our services page' do
    visit root_path

    click_link 'Our Services'

    expect(page.status_code).to eq(200)
  end

  it 'the industries page' do
    visit root_path

    click_link 'Industries'

    expect(page.status_code).to eq(200)
  end

  it 'the careers page' do
    visit root_path

    click_link 'Careers'

    expect(page.status_code).to eq(200)
  end

  it 'the contact us page' do
    visit root_path

    click_link 'Contact Us'

    expect(page.status_code).to eq(200)
  end
end
