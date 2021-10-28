---
layout: "page"
nav_order: 2
title: "Structure"
parent: "Course Development"
---

# Structure

A Moodle courses consists of two major components.
- **Activities** are resources such as *Pages*, *Quizzes* or *Files* that a student can interact with and contribute to.
- **Sections** are used to organise *Activities* into major topics of the a course.

---

## Course Layout

Courses are divided into any number of sections. The following example shows the layout of a course with four sections.

<center>
<img src="{{ site.url }}/Academy/pages/img/course-structure.png" width="25%">
</center>

The following content should be placed in each of these Sections
1. **Course overview** presents a welcome message, a content summary and information about the teacher. There are no activities that need to be completed in this section.
2. **Introduction** provides a general introduction to the course. This section must have at least the following activities.
  - Course introduction (*Page* activity)
  - Course resources (*Page* activity)
3. **Course section** should cover a major topic of the course with several activities. A course can have any number sections. This section must have at least the following activities.
  - At least one learning resource (*Page* activity)
  - Knowledge checker for this section only (*Quiz* activity)
4. **Examination** tests the overall understanding of the student.
  - Knowledge checker for all sections (*Quiz* activity)
