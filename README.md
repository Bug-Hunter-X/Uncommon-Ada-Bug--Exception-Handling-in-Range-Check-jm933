# Ada Exception Handling in Range Check Function

This example demonstrates a potential bug related to exception handling within a range check function in Ada.  The `Check_Range` function checks if an integer input is greater than 10.  The added exception handler addresses potential issues that may arise unexpectedly during execution.  While this specific example doesn't show a common runtime error in the happy path, the importance of thorough exception handling in Ada is highlighted.

## The Bug

The original function might not have considered potential exceptions during the comparison operation. The enhanced version addresses this and includes a general exception handler that returns False in case of unexpected issues.

## The Solution

The solution adds a comprehensive exception handler. This prevents potential crashes if unexpected exceptions occur during the range check operation (although this is uncommon for simple comparisons in Ada).  This improves the overall robustness of the function.