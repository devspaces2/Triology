Feature: Package UCARP in Kerio Control build

Scenario: UCARP is available
    Given Kerio Control is built with UCARP
    When Kerio Control build is deployed
    And `ucarp -h` command is run
    Then brief help description is displayed

Scenario: UCARP is not available
    Given Kerio Control is not built with UCARP
    When Kerio Control build is deployed
    And `ucarp -h` command is run
    Then  brief help description is not displayed
