---
layout: "page"
nav_order: 2
title: "Structure"
parent: "Course Development"
---

# Structure

EHDEN Academy courses consist of two components.
- **Activities** are resources such as *Pages*, *Quizzes* or *Files* that a student can interact with and contribute to.
- **Sections** are used to provide general course information and organise *Activities* into topics.

---

## Activities

Moodle provides a multitude of different activities. To avoid confusion for the student we have decided that only three different activities should be used throughout a course.
- **Page** activity to present course information in the form of text or a video.
- **Quiz** activity for knowledge checkers and examinations.
- **File** activity to share small files with the student

Please avoid the use of other activities wherever possible.

### Page Activity

### Quiz Activity
To pass any knowledge checker at least 8 out of 10 points are required. Quizzes should be multiple choice.

### File Activity
(< 5MB)

## Sections

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
