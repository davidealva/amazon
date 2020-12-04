require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Address", with: @event.address
    fill_in "City", with: @event.city
    fill_in "Contact", with: @event.contact
    fill_in "Cost", with: @event.cost
    fill_in "Date", with: @event.date
    fill_in "Description", with: @event.description
    fill_in "Event email", with: @event.event_email
    fill_in "Event name", with: @event.event_name
    fill_in "Event url", with: @event.event_url
    fill_in "Phone", with: @event.phone
    fill_in "State", with: @event.state
    fill_in "Time", with: @event.time
    fill_in "Zip", with: @event.zip
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Address", with: @event.address
    fill_in "City", with: @event.city
    fill_in "Contact", with: @event.contact
    fill_in "Cost", with: @event.cost
    fill_in "Date", with: @event.date
    fill_in "Description", with: @event.description
    fill_in "Event email", with: @event.event_email
    fill_in "Event name", with: @event.event_name
    fill_in "Event url", with: @event.event_url
    fill_in "Phone", with: @event.phone
    fill_in "State", with: @event.state
    fill_in "Time", with: @event.time
    fill_in "Zip", with: @event.zip
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
