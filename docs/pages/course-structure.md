---
layout: "page"
nav_order: 2
title: "Course Structure"
parent: "Course Development"
---

# Course Structure
EHDEN Academy courses consist of two components.
- **Activities** are resources such as *Pages*, *Quizzes* or *Files* that a student can interact with and contribute to.
- **Sections** are used to provide general course information and organise *Activities* into topics.

---

## Sections
Courses are divided into any number of *Sections*. The following example shows the layout of a course with four sections.

<center>
<img src="{{ site.url }}/Academy/pages/img/course-structure-1.png" width="25%">
</center>

The following content should be placed in each of these Sections
1. **Course overview** is distinctive due to its grey-blue color on the top of the course. This section should present the following information.
  - Welcome message
  - Course content summary
  - Information about the teacher
  - Course duration of the form *Estimated time for course completion is 2 h 30 min*.
2. **Introduction** provides a general introduction to the course. This section must have at least the following activities.
  - Course introduction (*Page* activity)
  - Course resources (*Page* activity)
3. **Course section** should cover a major topic of the course with several activities. A course can have any number sections. This section must have at least the following activities.
  - At least one learning resource (*Page* activity)
  - Knowledge checker for this section only (*Quiz* activity)
4. **Examination** tests the overall understanding of the student.
  - Knowledge checker for all sections (*Quiz* activity)

---

## Activities
Moodle provides a multitude of different activities. To avoid confusion for the student we have decided that only three different activities should be used throughout a course.
- **Page** activity to present course information in the form of text or a video.
- **Quiz** activity for knowledge checkers and examinations.
- **File** activity to share small files with the student

Please avoid the use of other activities wherever possible.

### Page Activity
The default learning resource in the Academy uses a **Page** activity. It should contain either written text or a video. A video should be uploaded to the Academy server so that it is available on demand and does not rely on external services. We make an exception for long videos that are occasionally added as optional resource. For example, there are recordings of the OHDSI Symposium 2019 in Europe, which are available as a three hour long video on YouTube, and should be included as a link only.

To upload a video to a **Page** activity:
1. Open the **Page** activity you created for the video.
2. Click on the **cog icon** and select **Edit settings**
3. Scroll down to the **Content** sections
4. In the text field **Page content** select the **Insert or edit and audio/video file** icon
    <center>
    <img src="{{ site.url }}/Academy/pages/img/course-structure-2.png" width="100%">
    </center>
5. The **Insert media** window opens
6. Click on **Browse repositories..** to upload the video files
7. After returning to the **Insert media** window click on the **Display options** Sections
8. Provide the following value for **Size**

    | Display options | Value |
    | ---: | :--- |
    | Size | `960 x 540` |
9. Click on **Insert media** to save and close the window

A video is accompanied by at least a summary of its content located directly below. The summary should be placed through the HTML view.
You can open the HTML video by clicking the HTML button in the editor. It may be necessary to expand the additonal taskbar to see the HTML button.
<center>
<img src="{{ site.url }}/Academy/pages/img/course-structure-3.png" width="100%">
</center>
An editor with similar content as follows should open where `[...]` holds various information such as the address of the video you just added.
```
&nbsp;<video width="960" height="540" controls="true">
  [...]
</video>&nbsp;
<br>
<div class="summary-blue">
  <h3>Summary</h3>
  <p>This is the first paragraph of the summary of this video.</p>
  <p>This is the second paragraph of the summary of this video.</p>
</div>
```
On the top of the HTML editor you will see the video you have just added.

### Quiz Activity
To pass any knowledge checker at least 8 out of 10 points are required. Quizzes should be multiple choice.

### File Activity
(< 5MB)
