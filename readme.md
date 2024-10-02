## Exercises

## Starting with code coverage

- How much coverage does it show?
It shows 83.3%
- How can you increase the coverage?
By writing more tests to cover the uncovered methods.
- Is coverage a good proxy for code and test quality?
No, we can have a 100% coverage without having good efficient tests.

## Mutating UUID

- The mutation score clearly differs from the coverage percentage. Can you come up with some ideas of how to bridge this gap?
> 
- What measure is more precise? What does it mean precise anyways when thinking about test quality?
- Are both analyses useful? Or one is better and can replace the other for all purposes?

- Before we had *not covered method* (actually the tool measures it at a finer granularity but it is not shown...), and now we have *surviving mutants*. What is the relationship between them? 
> 
Why they differ in number? 
>
Are there implementation differences in the analyses? Or some important differences between the approaches?
>
- Related to the question before: can you think about an example of code that is covered but fails mutation testing?
>
