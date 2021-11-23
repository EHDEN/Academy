# ACADEMY

This repository contains resources for the EHDEN Academy (https://academy.ehden.eu).

**The EHDEN Academy** is an e-learning environment that is being developed by the European Health Data and Evidence Network (EHDEN) project (www.ehden.eu). Its aim is to train all stakeholders in the project in the use of the tools and processes that are being adopted in EHDEN. Course development on the OMOP Common Data Model and the rich set of tools developed in the Observational Health Data Sciences and Informatics (OHDSI) project are developed in collaboration with that community (See www.ohdsi.org for more information). 

## Docs instructions
Documentations for developers can be found at [Academy Docs](https://ehden.github.io/Academy). To modify the documentation, edit the markdown files (*.md) inside the /docs/ and /docs/pages/ directory of this repository.

/docs/ directory:
- index.md (created https://ehden.github.io/Academy/)
- about.md (creates https://ehden.github.io/Academy/about/)

/docs/pages/ directory:
- (all other pages).md (e.g. https://ehden.github.io/Academy/pages/screen-capture.html)

The markdown files can be edited using the [Markdown syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax), which is automatically compiled into an HTML website once changes are commited to this repository.

Every page that is newly added to the /docs/pages/ directory requires a header to allow formatting. For example, the notice the header in the [Course Development](https://raw.githubusercontent.com/EHDEN/Academy/master/docs/pages/course-index.md) markdown file.
```
---
layout: "page"
nav_order: 2
title: "Course Development"
has_children: true
---

```

The header consists of the following key-value pairs:
- layout should always have value "page"
- nav_order is used for ordering the pages, thus, need to be consistent across all pages
- title is a unique display name, which is also used as identifier for that page
- has_children indicates whether the page is a parent page

A parent can have one or multiple child pages, e.g. the child page generated from the [Screen Capture](https://raw.githubusercontent.com/EHDEN/Academy/master/docs/pages/screen-capture.md) markdown file has the following header.

```
---
layout: "page"
nav_order: 3
title: "Screen Capture"
parent: "Course Development"
---
```
It is important to provide the parent key with the correct value, which is the title of the parent page, in this care "Course Development" as spelled above.

To edit a page simply click the "Edit this file" icon, which will open a file editor.

<img width="176" alt="Screen Shot 2021-11-23 at 11 21 16" src="https://user-images.githubusercontent.com/7384198/143007348-b4cea287-33d2-4be1-934b-ff18964fa33c.png">

Commiting the changes will automatically compile the updated documentation.

<img width="458" alt="Screen Shot 2021-11-23 at 11 24 02" src="https://user-images.githubusercontent.com/7384198/143008166-7593f1a8-8357-4c2f-ad36-25463466b4ff.png">

## Technology
The EHDEN Academy is being developed in Moodle and is hosted in the Amazon AWS cloud.

## Getting Involved
Please report issues and suggestions through the <a href="../../issues">GitHub issue tracker</a>



