Feature: Checking React page
  As a Community Announcer user
  I want to see React page

  Scenario: Home Page should be React page
    Given page is Community Announcer home page
    When I search app title
    Then I must see "Community Announcer" text
