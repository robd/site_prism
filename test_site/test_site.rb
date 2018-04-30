# frozen_string_literal: true

class TestSite
  def home
    HomePage.new
  end

  def home_with_expected_elements
    HomePageWithExpectedElements.new
  end

  def no_title
    NoTitle.new
  end

  def dynamic_page
    DynamicPage.new
  end

  def redirect_page
    RedirectPage.new
  end

  def page_with_people
    PageWithPeople.new
  end

  def section_experiments
    SectionExperiments.new
  end
end
