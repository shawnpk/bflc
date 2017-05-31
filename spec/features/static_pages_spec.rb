require 'rails_helper'

describe 'Navigation can reach' do
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

  it 'the Doug Beach page' do
    visit root_path

    click_link 'Partners'
    click_link 'Doug Beach'

    expect(page).to have_selector 'h1'
  end

  it 'the Gary Freeman page' do
    visit root_path

    click_link 'Partners'
    click_link 'Gary Freeman'

    expect(page).to have_selector 'h1'
  end

  it 'the Gene Lim page' do
    visit root_path

    click_link 'Partners'
    click_link 'Gene Lim'

    expect(page).to have_selector 'h1'
  end

  it 'the Steve Cleland page' do
    visit root_path

    click_link 'Partners'
    click_link 'Steve Cleland'

    expect(page).to have_selector 'h1'
  end

  it 'the Susan Lewis page' do
    visit root_path

    click_link 'Partners'
    click_link 'Susan Lewis'

    expect(page).to have_selector 'h1'
  end

  it 'the Accounting and Assurance page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Accounting and Assurance'

    expect(page).to have_selector 'h1'
  end

  it 'the Business Advisory page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Business Advisory'

    expect(page).to have_selector 'h1'
  end

  it 'the Complex Business Transaction page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Complex Business Transaction'

    expect(page).to have_selector 'h1'
  end

  it 'the Cost Segregation page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Cost Segregation'

    expect(page).to have_selector 'h1'
  end

  it 'the Estate Planning page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Estate Planning'

    expect(page).to have_selector 'h1'
  end

  it 'the Fraud Prevention page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Fraud Prevention'

    expect(page).to have_selector 'h1'
  end

  it 'the Mergers page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Mergers'

    expect(page).to have_selector 'h1'
  end

  it 'the Starting a Business page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Starting a Business'

    expect(page).to have_selector 'h1'
  end

  it 'the Strategic Planning page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Strategic Planning'

    expect(page).to have_selector 'h1'
  end

  it 'the Succession page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Succession'

    expect(page).to have_selector 'h1'
  end

  it 'the Tax Services page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Tax Services'

    expect(page).to have_selector 'h1'
  end
end
