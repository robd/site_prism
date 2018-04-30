# frozen_string_literal: true

class PageWithPeople < SitePrism::Page
  set_url '/page_with_people.htm'

  # sections
  section :people_list, People, '.people-something'
end
