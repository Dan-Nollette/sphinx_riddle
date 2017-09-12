Spec
  input page presents a form where user is asked three riddles  and can input answers in text fields.
  if all three answers match expected text, show success page
  otherwise show failure page

## Specifications

* If riddle is answered correctly, return victorious
  * Example input: "A human"
  * Example output: "Correct!"
* If riddle is answered incorrectly, return failure.
  * Example input: "A tree?"
  * Example output: "Failure!"
* If all riddles are answered correctly, display victory page.
  * Example input: (All riddles are answered correctly)
  * Example output : Route to victory page is returned.
* If a single riddle is answered incorrectly, display failure page.
  * Example input: (Not all riddles are answered correctly)
  * Example output: Route to failure page is returned
