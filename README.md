# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: inadequate handling of exceptions during asynchronous operations. The `fetchData` function makes a network request and parses JSON, but it doesn't comprehensively manage potential errors.  This can lead to crashes or unexpected behavior in the application.

The `bug.dart` file contains the flawed code, while `bugSolution.dart` provides a more robust solution.