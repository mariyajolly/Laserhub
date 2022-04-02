Feature: QA challenge at Laserhub

  Scenario Outline: Login to Laserhub website

    Given Login to Laserhub's web application
    When Enter the credentials <email>,<password>
    Then User login <status>

    Examples:
      | email                                     | password                | status         |
      | e.ioannidis+testing_worktask@laserhub.com | l0vet3sting@            | success        |
      | e.ioannidis+testing_worktask@laserhub.com | abcdd@1235565           | failure        |
      | abc@abc.com                               | 12345678                | failure        |
      |                                           |                         | failure        |
      | e.ioannidis+testing_worktask@laserhub.com |                         | failure        |
      |                                           | abcdd@1235565           | failure        |
