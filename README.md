## Jiq (means "Scream" in Farsi)

There was a need in error handling with more details and more flexability in Swift. I wrote my own Error wrapper so I could add more details to the errors.

This wrapper is just makes my life easier! Hope does the same for you. 😬

### Usage
Initialize a Jiq object like this:
```swift
let error = Jiq()
```

Or like this:
```swift
let error = Jiq()
```
You can assign multiple details to the errors.
There are error types like these:

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
let error = Jiq()
error.message = "Something bad happened."
```

You can append the real Error object to it:
```swift
error.error = Error()
```
There are "code" and "codeName" as other details that I found usefull over time.

### Installation
Simply drop the Jiq.swift file in your project or import this project to your workspace.

## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/Taskulu/Jiq/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.


### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/Taskulu/Jiq/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
