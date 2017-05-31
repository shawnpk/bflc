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

    expect(current_path).to eq(doug_beach_path)
    expect(page).to have_selector('h1', text: 'Doug Beach')
  end

  it 'the Gary Freeman page' do
    visit root_path

    click_link 'Partners'
    click_link 'Gary Freeman'

    expect(current_path).to eq(gary_freeman_path)
    expect(page).to have_selector('h1', text: 'Gary Freeman')
  end

  it 'the Gene Lim page' do
    visit root_path

    click_link 'Partners'
    click_link 'Gene Lim'

    expect(current_path).to eq(gene_lim_path)
    expect(page).to have_selector('h1', text: 'Gene Lim')
  end

  it 'the Steve Cleland page' do
    visit root_path

    click_link 'Partners'
    click_link 'Steve Cleland'

    expect(current_path).to eq(steve_cleland_path)
    expect(page).to have_selector('h1', text: 'Steve Cleland')
  end

  it 'the Susan Lewis page' do
    visit root_path

    click_link 'Partners'
    click_link 'Susan Lewis'

    expect(current_path).to eq(susan_lewis_path)
    expect(page).to have_selector('h1', text: 'Susan Lewis')
  end

  it 'the Accounting and Assurance page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Accounting and Assurance'

    expect(current_path).to eq(accounting_assurance_path)
    expect(page).to have_selector('h1', text: 'Accounting and Assurance')
  end

  it 'the Business Advisory page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Business Advisory'

    expect(current_path).to eq(business_advisory_path)
    expect(page).to have_selector('h1', text: 'Business Advisory')
  end

  it 'the Complex Business Transaction page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Complex Business Transaction'

    expect(current_path).to eq(complex_business_transaction_path)
    expect(page).to have_selector('h1', text: 'Complex Business Transaction')
  end

  it 'the Cost Segregation page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Cost Segregation'

    expect(current_path).to eq(cost_segregation_path)
    expect(page).to have_selector('h1', text: 'Cost Segregation')
  end

  it 'the Estate Planning page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Estate Planning'

    expect(current_path).to eq(estate_planning_path)
    expect(page).to have_selector('h1', text: 'Estate Planning')
  end

  it 'the Fraud Prevention page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Fraud Prevention'

    expect(current_path).to eq(fraud_prevention_path)
    expect(page).to have_selector('h1', text: 'Fraud Prevention')
  end

  it 'the Mergers page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Mergers'

    expect(current_path).to eq(mergers_path)
    expect(page).to have_selector('h1', text: 'Mergers')
  end

  it 'the Starting a Business page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Starting a Business'

    expect(current_path).to eq(starting_a_business_path)
    expect(page).to have_selector('h1', text: 'Starting a Business')
  end

  it 'the Strategic Planning page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Strategic Planning'

    expect(current_path).to eq(strategic_planning_path)
    expect(page).to have_selector('h1', text: 'Strategic Planning')
  end

  it 'the Succession page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Succession'

    expect(current_path).to eq(succession_path)
    expect(page).to have_selector('h1', text: 'Succession')
  end

  it 'the Tax Services page' do
    visit root_path

    click_link 'Our Services'
    click_link 'Tax Services'

    expect(current_path).to eq(tax_services_path)
    expect(page).to have_selector('h1', text: 'Tax Services')
  end

  it 'the Construction page' do
    visit root_path

    click_link 'Industries'
    click_link 'Construction'

    expect(current_path).to eq(construction_path)
    expect(page).to have_selector('h1', text: 'Construction')
  end

  it 'the Craft Brewing page' do
    visit root_path

    click_link 'Industries'
    click_link 'Craft Brewing'

    expect(current_path).to eq(craft_brewing_path)
    expect(page).to have_selector('h1', text: 'Craft Brewing')
  end

  it 'the Family Owned Businesses page' do
    visit root_path

    click_link 'Industries'
    click_link 'Family Owned Businesses'

    expect(current_path).to eq(family_owned_businesses_path)
    expect(page).to have_selector('h1', text: 'Family Owned Businesses')
  end

  it 'the Franchise page' do
    visit root_path

    click_link 'Industries'
    click_link 'Franchise'

    expect(current_path).to eq(franchise_path)
    expect(page).to have_selector('h1', text: 'Franchise')
  end

  it 'the Healthcare page' do
    visit root_path

    click_link 'Industries'
    click_link 'Healthcare'

    expect(current_path).to eq(healthcare_path)
    expect(page).to have_selector('h1', text: 'Healthcare')
  end

  it 'the High Net Worth Individuals page' do
    visit root_path

    click_link 'Industries'
    click_link 'High Net Worth Individuals'

    expect(current_path).to eq(high_net_worth_path)
    expect(page).to have_selector('h1', text: 'High Net Worth Individuals')
  end

  it 'the Law Firms page' do
    visit root_path

    click_link 'Industries'
    click_link 'Law Firms'

    expect(current_path).to eq(law_firms_path)
    expect(page).to have_selector('h1', text: 'Law Firms')
  end

  it 'the Manufacturing and Distribution page' do
    visit root_path

    click_link 'Industries'
    click_link 'Manufacturing and Distribution'

    expect(current_path).to eq(manufacturing_distribution_path)
    expect(page).to have_selector('h1', text: 'Manufacturing and Distribution')
  end

  it 'the Not-For-Profit page' do
    visit root_path

    click_link 'Industries'
    click_link 'Not-For-Profit'

    expect(current_path).to eq(not_for_profit_path)
    expect(page).to have_selector('h1', text: 'Not-For-Profit')
  end

  it 'the Real Estate page' do
    visit root_path

    click_link 'Industries'
    click_link 'Real Estate'

    expect(current_path).to eq(real_estate_path)
    expect(page).to have_selector('h1', text: 'Real Estate')
  end

  it 'the Retail page' do
    visit root_path

    click_link 'Industries'
    click_link 'Retail'

    expect(current_path).to eq(retail_path)
    expect(page).to have_selector('h1', text: 'Retail')
  end

  it 'the Service Firms page' do
    visit root_path

    click_link 'Industries'
    click_link 'Service Firms'

    expect(current_path).to eq(service_firms_path)
    expect(page).to have_selector('h1', text: 'Service Firms')
  end

  it 'the Technology page' do
    visit root_path

    click_link 'Industries'
    click_link 'Technology'

    expect(current_path).to eq(technology_path)
    expect(page).to have_selector('h1', text: 'Technology')
  end
end
