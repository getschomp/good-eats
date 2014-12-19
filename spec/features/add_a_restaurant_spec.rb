require 'rails_helper'

feature "user adds a restaurant ", %q{
  As a user
  I want add a restaurant
  So that I can view all the restraunts that have been added
  }do

    scenario "user adds a new restaurant with a description" do
    attrs = {
      name: 'Nautilus',
      address: 'Camebridge Street',
      city: 'Nantucket',
      state: 'MA',
      zip_code: '02554',
      description:'get some octopi here, but not oct-cat'
    }

    restaurant = Restaurant.new(attrs)

    visit '/restaurants/new'
    fill_in 'restaurant_name', with: restaurant.name
    fill_in 'restaurant_address', with: restaurant.address
    fill_in 'restaurant_city', with: restaurant.city
    fill_in 'restaurant_state', with: restaurant.state
    fill_in 'restaurant_zip_code', with: restaurant.zip_code
    fill_in 'restaurant_description', with: restaurant.description
    click_on 'Create Restaurant'
    expect(page).to have_content 'Restaurant was successfully created.'

    expect(page).to have_content restaurant.name
  end

  scenario "user adds a new restaurant without a description" do
    attrs = {
      name: 'Nautilus',
      address: 'Camebridge Street',
      city: 'Nantucket',
      state: 'MA',
      zip_code: '02554',
    }

    restaurant = Restaurant.new(attrs)

    visit '/restaurants/new'
    fill_in 'restaurant_name', with: restaurant.name
    fill_in 'restaurant_address', with: restaurant.address
    fill_in 'restaurant_city', with: restaurant.city
    fill_in 'restaurant_state', with: restaurant.state
    fill_in 'restaurant_zip_code', with: restaurant.zip_code
    click_on 'Create Restaurant'
    expect(page).to have_content 'Restaurant was successfully created.'

    expect(page).to have_content restaurant.name
  end

end
