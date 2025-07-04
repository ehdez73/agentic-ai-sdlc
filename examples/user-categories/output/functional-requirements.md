1. As a **user**, I want to be assigned a category (PLATINUM, GOLD, SILVER, BRONZE) based on the number of completed orders I have made in the last year.
2. As a **marketing team member**, I want to segment users into categories so that we can create targeted marketing campaigns that increase sales.
3. As a **system administrator**, I want the system to classify users based on the following rules: PLATINUM for 20+ satisfactory orders, GOLD for 15-20 satisfactory orders, SILVER for 10-15 satisfactory orders, and BRONZE for 5-10 satisfactory orders.
4. As a **user**, I want to receive an email notification when I have been upgraded to a higher category based on my order history.
5. As a **user**, I want to be notified via email if my category is downgraded due to an order being canceled or insufficient completed orders.
6. As a **system**, I want to ensure that categorization processing is asynchronous so that it does not affect the normal purchasing flow.
7. As a **system**, I want to implement retry policies for email notifications to handle potential failures in sending out messages.
8. As a **QA**, I want to validate that if a user does not meet any category criteria, no action is taken regarding categorization.