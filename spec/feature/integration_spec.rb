require 'rails_helper'
require 'date'

RSpec.describe 'Creating a book', type: :feature do

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 12
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 12
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 12
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(12)
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 12
    select '1997', :from => 'book_published_date_1i' 
    select '6', :from => 'book_published_date_2i'
    select '26', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1997-06-26')
  end

end