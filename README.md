## Jiq (means "Scream" in Farsi) 😱

[swift 3]

There was a need in error handling with more details and more flexibility in Swift. I wrote my own Error wrapper so I could add more details to the errors.

This wrapper just makes my life easier! Hope does the same for you. 😬

### Usage
Initialize a Jiq object like this:
```swift
let error = Jiq(code: 0, codeName:"WhatEverCodeNameYouWant", type: .unknown, message:"Something bad happened.")
```

Or like this:
```swift
let error = Jiq()
```
You can assign multiple details to the errors.

```swift
error.type = .badResponse
```

Here are some Jiq types:
```markdown
  none
  badRequest
  badParameters
  badResponse
  notFound
  unknown
```

You can assing messages to the error like this:
```swift
error.message = "Something bad happened."
```

You can append the real Error object to it:
```swift
error.error = Error()
```


### Installation
Simply drop the Jiq.swift file in your project or import this project to your workspace.

### Please fork and contribute
