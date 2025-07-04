# User Category Assignment Documentation

## 1. Overview
This documentation outlines the features associated with the categorization of users based on their order history. Users are classified into categories—PLATINUM, GOLD, SILVER, and BRONZE—based on the number of satisfactory orders they have completed in the last year. This categorization enables tailored marketing campaigns and automated notifications to inform users of changes in their status, enhancing user engagement and satisfaction.

## 2. Functional Requirements
- **As a user, I want to be assigned a category (PLATINUM, GOLD, SILVER, BRONZE) based on the number of completed orders I have made in the last year.**
  - Users are categorized according to their total number of satisfactory orders. This system facilitates recognition of user loyalty and order history.
  - **Impact:** Enhances user experience and aids in personalized marketing efforts.
  - *Example:* If a user completes 12 orders in a year, they may be assigned the SILVER category.

- **As a marketing team member, I want to segment users into categories so that we can create targeted marketing campaigns that increase sales.**
  - Marketing professionals can identify and engage different user segments for tailored campaigns.
  - **Impact:** Increases the effectiveness of marketing strategies based on user categorization.

- **As a system administrator, I want the system to classify users based on the following rules: PLATINUM for 20+ satisfactory orders, GOLD for 15-20 satisfactory orders, SILVER for 10-15 satisfactory orders, and BRONZE for 5-10 satisfactory orders.**
  - This rule set ensures consistent categorization across users, providing transparency in how user statuses are established.
  - **Impact:** Standardizes user classification processes and helps maintain clarity in communication.

- **As a user, I want to receive an email notification when I have been upgraded to a higher category based on my order history.**
  - Users are informed of improvements in their status, fostering loyalty and satisfaction.
  - **Impact:** Encourages continued interaction on the platform.

- **As a user, I want to be notified via email if my category is downgraded due to an order being canceled or insufficient completed orders.**
  - Users remain informed about their status changes, allowing them to understand and address factors contributing to downgrades.
  - **Impact:** Promotes transparency and encourages users to complete more satisfactory orders.

- **As a system, I want to ensure that categorization processing is asynchronous so that it does not affect the normal purchasing flow.**
  - Asynchronous categorization prevents potential lags in user experience during order processing.
  - **Impact:** Enhances the efficiency of the system.

- **As a system, I want to implement retry policies for email notifications to handle potential failures in sending out messages.**
  - Implementing robust retry policies ensures that important notifications are eventually delivered.
  - **Impact:** Increases reliability of the notification system.

- **As a QA, I want to validate that if a user does not meet any category criteria, no action is taken regarding categorization.**
  - This ensures that the system does not erroneously categorize users who do not meet any criteria.
  - **Impact:** Preserves the integrity of the categorization process.

## 3. Behavior Summary
- Users are categorized into PLATINUM, GOLD, SILVER, or BRONZE based on their satisfactory order counts within a year.
- Notifications regarding upgrades and downgrades are sent via email as per user status changes.
- If a user does not meet any categorization criteria, they do not receive a category assignment.
- The categorization process operates asynchronously to avoid interruptions during user transactions.

## 4. Categorization Rules
| Category   | Order Count Range        |
|------------|--------------------------|
| PLATINUM   | 20+ satisfactorily completed orders |
| GOLD       | 15-20 satisfactorily completed orders |
| SILVER     | 10-15 satisfactorily completed orders |
| BRONZE     | 5-10 satisfactorily completed orders |

- **Logic for Upgrading/Downgrading:**
  - Users are upgraded if their satisfactory orders increase sufficiently to meet the higher category criteria.
  - Users are downgraded if they cancel orders or have insufficient completed orders.

- **Null/Default Behavior:**
  - Users who do not meet any of the criteria are not assigned any category.

## 5. Notification Triggers
- **Upgrade Notifications:**
  - Sent when a user moves up to a higher category due to increased order count.
  
- **Downgrade Notifications:**
  - Sent when a user falls into a lower category due to cancellations or a drop in satisfactory orders.

- **No Action Notifications:**
  - No notifications are sent when the user does not meet any categorization criteria.

## 6. Gherkin Scenario Mapping
- **Title: Assigning categories based on completed orders**
  - **Type:** Positive Case
  - **Purpose:** To ensure users receive the correct category based on their order counts.
  - **Example Parameters:** 
    - Order Count: 25 → Assigned: PLATINUM
    - Order Count: 18 → Assigned: GOLD

- **Title: No action taken when user does not meet category criteria**
  - **Type:** Negative Case
  - **Purpose:** To verify that the system does not assign a category when the user doesn't meet the criteria.
  - **Example Parameters:** 
    - Order Count: 3 → No category assigned

- **Title: Notify user on upgrade**
  - **Type:** Positive Case
  - **Purpose:** To ensure users receive an email notification when they are upgraded to a higher category.

- **Title: Notify user on downgrade**
  - **Type:** Negative Case
  - **Purpose:** To confirm that users are informed via email about a downgrade in their category.

- **Title: Handle email notification failures**
  - **Type:** Edge Case
  - **Purpose:** To ensure retry policies are in place when email notifications fail to send.

## 7. Asynchronous Process Notes
Categorization processing will be implemented asynchronously, meaning it will operate independently from the main purchasing flow. This design choice is crucial for maintaining smooth user experiences during transaction activities, as it prevents delays associated with real-time classification of user status.

## 8. Additional Notes
- Integration with the email notification system must be robust, with reliable error handling and logging to track notification successes and failures.
- System administrators should regularly review categorization rules to adapt to changing business strategies or user behavior trends.
- There should be a user interface component for users to view their current category and the criteria associated with each level.