# Ada Exception Handling Bug

This repository demonstrates a common error in Ada programming: using a generic `others` exception handler without specific error logging or recovery. The `Check_Range` function is designed to check if an integer is greater than 10; however, its exception handler catches all potential exceptions, which could mask unexpected errors (like invalid input) and make debugging difficult.

The `bug.ada` file contains the erroneous code, while `bugSolution.ada` offers a more robust and informative approach to exception handling.

## How to Reproduce

1. Compile and run `bug.ada`.
2. Input a valid integer. The program should run without error.
3. Input invalid input (e.g., text).  The program will silently return false.

## Solution

The improved version in `bugSolution.ada` provides more specific exception handling, logging details about any errors encountered for better debugging.

## Lessons Learned

- Avoid generic `others` exception handlers unless absolutely necessary. Be specific about the types of exceptions you expect to handle.
- Always log errors or provide informative messages to the user when exceptions occur. This helps during testing and in production for easier diagnostics.