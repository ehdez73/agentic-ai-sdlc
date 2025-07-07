* [Facilitator] Thank you for confirming that everything is satisfactory. Below is the entire conversation reformatted in Markdown for your reference:

```markdown
**Date**: 2025-07-07  
**Time**: 12:30 PM  

* [Facilitator] Welcome! Today is 2025-07-07, and the time is 12:23 PM. Let's start our "3 Amigos" meeting by inviting the Product Owner to provide a brief description of the functionality we will be discussing today. Could you please share that with us?

* [Product Owner] I want to be able to apply discount coupons during the checkout in my shopping cart.

* [Facilitator] Thank you for that description! Let's delve deeper into the functionality of applying discount coupons during checkout. I will assume the role of the Product Owner for the next set of questions to clarify further.

* [Product Owner] What is the main business objective and expected value that you are aiming to achieve with this coupon functionality? Who will benefit from it and in what way?

* [User] Using coupons we can improve the sales.

* [Facilitator] Thank you for that insight. Improving sales is indeed a crucial objective. Now, let’s continue by focusing on specific details of the functionality. I will switch to the Developer role to discuss how this can be technically built.

* [Developer] To effectively implement the coupon functionality, can you describe the expected functional behavior? For example, what should happen when a user applies a coupon code? Are there any specific conditions that need to be met for a coupon to be valid?

* [User] When a coupon is applied, a predefined percentage is subtracted from the total amount. A coupon can be applied only once per user.

* [Facilitator] Great, we have established some vital aspects regarding the functionality. Now, let’s dive deeper into the use cases. I will adopt the role of the QA to ensure we have a comprehensive understanding of how this functionality can be validated.

* [QA] Thank you for the information. Can you outline the main use cases for applying the coupon? Specifically, what are the primary scenarios where users will apply a coupon, as well as any alternative scenarios that could occur? For example, what happens if an invalid coupon code is entered?

* [User] When an invalid coupon is entered, the discount is not applied and a message is shown to the user.

* [Facilitator] Thank you for clarifying the expected behavior regarding invalid coupons. Now, let's identify the business rules and constraints for this functionality. I will continue in the role of the QA for this purpose.

* [QA] What are the specific business rules we should adhere to regarding coupon application? For instance, are there any restrictions on which products or categories the coupon can be applied to? Additionally, are there any expiration dates for the coupons that we need to consider?

* [User] The coupons can be applied to all the products and they have an expiration date, defined when the coupon was created in the backoffice application.

* [Facilitator] Thank you for outlining the business rules, including the applicability of coupons to all products and their expiration management. Now, let's work on formalizing our acceptance criteria to clearly define what success looks like for this functionality. I will take the role of the Product Owner for this next step.

* [Product Owner] Regarding the acceptance criteria, could you help define them using the Given-When-Then format? For instance, what are the conditions before applying a coupon, what actions are taken, and what is expected as a result?

* [User] Please suggest some acceptance criteria.

* [Facilitator] Certainly! Here are some suggested acceptance criteria using the Given-When-Then format to cover the functionality we're discussing:
  1. **Given** the user is on the checkout page,  
     **When** the user enters a valid coupon code and clicks "Apply",  
     **Then** the discount is applied to the total amount, and the updated total is displayed.
  2. **Given** the user is on the checkout page,  
     **When** the user enters an invalid coupon code and clicks "Apply",  
     **Then** an error message is displayed indicating the coupon code is invalid.
  3. **Given** the user has successfully applied a coupon,  
     **When** the user attempts to apply the same coupon again,  
     **Then** an error message is displayed indicating that the coupon can only be applied once.
  4. **Given** the user is on the checkout page,  
     **When** the coupon has expired,  
     **Then** an error message is displayed indicating that the coupon cannot be used because it has expired.
  5. **Given** the user is on the checkout page,  
     **When** all items in the cart have been eligible for the discount,  
     **Then** the discount is calculated based on the total eligible amount.

* [Facilitator] Please review these acceptance criteria to ensure they align with your expectations. Are there any additional scenarios or variations you'd like to include in the acceptance criteria?

* [User] They are OK.

* [Facilitator] Excellent! Now that we've established a solid framework for the coupon functionality, let’s briefly go over validations, error handling, and any potential edge cases that we should consider. 

I will take the role of the QA for this next discussion.

* [QA] For validations, what specific checks should we implement? For instance, should we verify the format of the coupon code before attempting to apply it? Additionally, how should we handle cases where there are unexpected errors during the discount calculation (e.g., system failures)? Are there any edge cases or assumptions we need to document?

* [User] If something goes wrong, just don't apply the coupon. Coupons should be 10 alphanumeric character length.

* [Facilitator] Thank you for specifying the length requirement for the coupon codes and the handling of errors during the process. Let’s summarize the key aspects we have discussed, ensuring there are no unresolved questions or ambiguities.

* [Facilitator] To recap:
  - **Functionality Overview**: The functionality allows users to apply discount coupons during checkout, which subtract a predefined percentage from the total amount of their shopping cart.
  - **Business Objective**: The aim is to improve sales by incentivizing purchases through discount coupons.
  - **Expected Functional Behavior**: Coupons provide a discount when valid, can be applied only once by users, and an error message is displayed for invalid codes or expired coupons.
  - **Business Rules**: Coupons apply to all products and have an expiration date defined in the back office.
  - **Main Use Cases**: Valid coupon application results in a discount; invalid coupons and expired coupons both trigger error messages.
  - **Acceptance Criteria**: Have been defined using the Given-When-Then format, covering various scenarios regarding valid and invalid coupon usage.
  - **Validations and Error Handling**: Coupons must be 10 characters and alphanumeric. If processing fails, the coupon is not applied.
  - **Open Questions or Identified Ambiguities**: Please confirm if there are any remaining uncertainties or additional requirements needed before we close this conversation.

* [User] They are OK.

* [Facilitator] Thank you for confirming that everything is satisfactory.
```

### Summary

**Functionality:**  
The functionality allows users to apply discount coupons during checkout, subtracting a predefined percentage from the total amount of their shopping cart.

**Business Objective:**  
To improve sales by incentivizing purchases through discount coupons.

**Business Rules:**  
Coupons can be applied to all products and have an expiration date defined in the back office application.

**Main Cases:**  
Valid coupon application results in a discount; invalid coupons and expired coupons trigger error messages.

**Alternative/Error Cases:**  
Invalid coupons result in an error message; expired coupons result in an error message; reapplying a coupon results in a message stating it can only be used once.

**Acceptance Criteria:**  
- Given the user is on the checkout page, when a valid coupon code is applied, then the discount is reflected in the total amount.
- Given the user is on the checkout page, when an invalid coupon code is applied, then an error message indicates the coupon code is invalid.
- Given the user has successfully applied a coupon, when they attempt to apply the same coupon again, then an error message indicates it can only be applied once.
- Given the user is on the checkout page, when the coupon is expired, then an error message indicates the coupon cannot be used.
- Given the user is on the checkout page, when eligible items are present, the discount is calculated based on the total eligible amount.

**Open Questions or Identified Ambiguities:**  
No remaining uncertainties were identified.

If you have any further questions or would like to discuss additional topics, feel free to let me know!	
