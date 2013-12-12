Feature: User skips feedback
  In order to announce that I don't want to get feedback and thus get rid of the message stating that I haven't given feedback
  As a participant of an accepted transaction
  I want to be able to skip giving feedback
  
  @javascript
  Scenario: Skipping feedback from the conversation page
    Given there are following users:
      | person | 
      | kassi_testperson1 |
      | kassi_testperson2 |
    And there is favor request with title "Massage" from "kassi_testperson1"
    And there is a message "I offer this" from "kassi_testperson2" about that listing
    And the offer is confirmed
    And I am logged in as "kassi_testperson1"
    When I follow "inbox-link"
    And I follow "conversation_title_link_1"
    And I follow "Skip feedback"
    And I should see "Feedback skipped" within ".conversation-status"
    
  @javascript
  Scenario: Skipping feedback from the received conversations page
    Given there are following users:
      | person | 
      | kassi_testperson1 |
      | kassi_testperson2 |
    And there is favor request with title "Massage" from "kassi_testperson1"
    And there is a message "I offer this" from "kassi_testperson2" about that listing
    And the offer is confirmed
    And I am logged in as "kassi_testperson1"
    When I follow "inbox-link"
    And I follow "Skip feedback"
    And I should see "Feedback skipped" within ".conversation-status"  
  
  

  
