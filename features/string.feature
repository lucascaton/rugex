@string
Feature: Running the executable using string

  Scenario Outline: Show "usage" if the user typed a invalid sintax
    When I run "<input>"
    Then the output should contain "Usage:\n\nrugex <text> <regex>\n\nYou can use flags as such:"
    Examples:
      | input                   |
      | rugex                   |
      | rugex -h                |
      | rugex --help            |
      | rugex only_one_argument |

  Scenario: Show invalid option message if the user typed a invalid flag
    When I run "rugex -r regex"
    Then the output should contain "invalid option: -r"
