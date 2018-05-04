# frozen_string_literal: true

When('I wait for the element that takes a while to appear') do
  @test_site.home.wait_for_some_slow_element
end

When('I wait for the element that takes a while to disappear') do
  @test_site.home.wait_for_no_removing_element
end

Then('the slow element appears') do
  expect(@test_site.home).to have_some_slow_element
end

Then('the removing element disappears') do
  expect(@test_site.home).not_to have_removing_element
end

When('I wait for a short amount of time for an element to appear') do
  @test_site.home.wait_for_some_slow_element(1)
end

When('I wait for a short amount of time for an element to disappear') do
  @test_site.home.wait_for_no_removing_element(1)
end

Then("the element I am waiting for doesn't appear in time") do
  expect(@test_site.home).not_to have_some_slow_element
end

Then("the element I am waiting for doesn't disappear in time") do
  expect(@test_site.home).to have_removing_element
end

When('I wait for the section element that takes a while to appear') do
  @test_site.section_experiments.parent_section.wait_for_slow_section_element
end

When('I wait for the section element that takes a while to disappear') do
  @test_site.section_experiments.removing_parent_section.wait_for_no_removing_section_element
end

Then('the slow section appears') do
  expect(@test_site.section_experiments.parent_section).to have_slow_section_element
end

Then(/^the removing section disappears$/) do
  expect(@test_site.section_experiments.removing_parent_section).not_to have_removing_section_element
end

When(/^I wait for the collection of sections that takes a while to disappear$/) do
  @test_site.home.wait_for_no_removing_sections
end

Then(/^the removing collection of sections disappears$/) do
  expect(@test_site.home).not_to have_removing_sections
end

When('I wait a variable time for elements to appear') do
  @test_site.home.wait_for_lots_of_links
  @test_site.home.wait_for_lots_of_links(0.1)
end

When('I wait a variable time for elements to disappear') do
  @test_site.home.wait_for_no_removing_links
  @test_site.home.wait_for_no_removing_links(0.1)
end

Then('I get a timeout error when I wait for an element that never appears') do
  expect { @test_site.home.wait_until_invisible_element_visible(1) }
    .to raise_error(SitePrism::TimeOutWaitingForElementVisibility)
end

When('I wait until a particular element is visible') do
  @test_site.home.wait_until_some_slow_element_visible
end

When('I wait for a specific amount of time until a particular element is visible') do
  @test_site.home.wait_until_shy_element_visible(5)
end

When('I wait for an element to become invisible') do
  @test_site.home.wait_until_retiring_element_invisible
end

When('I wait for a specific amount of time until a particular element is invisible') do
  @test_site.home.wait_until_retiring_element_invisible(5)
end

Then('I get a timeout error when I wait for an element that never disappears') do
  expect { @test_site.home.wait_until_welcome_header_invisible(1) }
    .to raise_error(SitePrism::TimeOutWaitingForElementInvisibility)
end
