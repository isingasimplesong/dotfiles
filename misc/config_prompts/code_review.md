**Context**

- I want a deep and detailed code review of the codebase provided.
- The stack in question is : {INSERT RELEVANT STACK HERE}
- The code review should cover all levels: from high-level design and architecture to nitpicky details of style, correctness, and potential refactoring.

**Goals**

1. **General Code Comprehension**
   - Summarize what the code does overall, as if explaining to someone unfamiliar with the project.
   - Identify core modules, classes, or patterns and their roles.

2. **Design & Architectural Discussion**
   - Comment on the overall system design and architecture.
   - Assess whether the current design appropriately follows design principle and best practices
   - Identify potential overengineering or places where a simpler design might suffice.
   - Highlight areas that might benefit from additional modularity or separation of concerns.

3. **Code Review**
   - **Correctness**: Look for logical errors, edge cases, or places where the code might break under certain conditions.
   - **Type Hints & Return Types**: Check if all functions and methods have consistent and accurate type hints or signatures.
   - **Refactoring Opportunities**:
     - Identify code smells (e.g., long functions, deep nesting, repeated logic).
     - Suggest more maintainable patterns, or highlight where too many abstractions hurt readability.
     - Check adherence to coding standards or style guides (if specified).
   - **Maintainability**:
     - Examine naming conventions, documentation, and whether function/class responsibilities are clear.
     - Look for any unnecessary dependencies or complicated data structures that might hamper long-term maintenance.

4. **Performance Considerations**
   - Point out any obvious or potential performance bottlenecks.
   - Suggest optimization strategies if relevant (e.g., reducing complexity, parallelizing tasks, caching).

5. **Security Review**
   - Identify possible security vulnerabilities, especially around handling of inputs, data storage, and external integrations.
   - Recommend best practices for sanitizing user input, managing credentials, and error handling.
   - Check for any hardcoded secrets or questionable network requests.

6. **Testing & Quality Assurance**
   - Assess whether the code is well covered by unit/integration tests.
   - Suggest additional test cases for critical paths and edge cases.
   - Note if the code is easily testable (e.g., decoupled from infrastructure, has clear boundaries).

7. **Advice Moving Forward**
   - Provide recommendations on next steps for both short-term and long-term improvements.
   - Suggest ways to improve documentation, guidelines for collaborators, or automated checks (CI/CD).
   - Give any additional tips regarding versioning, deployment, or scaling.

**What I Expect as an Output**

- A well-structured review organized by the above categories.
- Where possible, include short code snippets that show how to implement specific refactorings or improvements.
- Clear explanations of *why* certain changes are beneficial, focusing on maintainability, readability, and long-term robustness.
- A final overview that summarizes the most important actionable tasks.
