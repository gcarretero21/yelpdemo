require "application_system_test_case"

class MealsTest < ApplicationSystemTestCase
  setup do
    @meal = meals(:one)
  end

  test "visiting the index" do
    visit meals_url
    assert_selector "h1", text: "Meals"
  end

  test "creating a Meal" do
    visit meals_url
    click_on "New Meal"

    fill_in "Day time", with: @meal.day_time
    fill_in "Item1", with: @meal.item1
    fill_in "Item2", with: @meal.item2
    fill_in "Item3", with: @meal.item3
    fill_in "Item4", with: @meal.item4
    click_on "Create Meal"

    assert_text "Meal was successfully created"
    click_on "Back"
  end

  test "updating a Meal" do
    visit meals_url
    click_on "Edit", match: :first

    fill_in "Day time", with: @meal.day_time
    fill_in "Item1", with: @meal.item1
    fill_in "Item2", with: @meal.item2
    fill_in "Item3", with: @meal.item3
    fill_in "Item4", with: @meal.item4
    click_on "Update Meal"

    assert_text "Meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Meal" do
    visit meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meal was successfully destroyed"
  end
end
