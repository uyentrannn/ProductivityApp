# Productivity App

| Front End               | Back End                      |
| ----------------------- | ----------------------------- |
| App Design              | Create SQL database           |
| Turning Design into app | Build REST API (Python Flask) |
|                         | Hosting our API               |
|                         | Safely storing user data      |



## Features:

### Capture

* User should be able to write down things in one list
* User wants this list easily accessible for when a new idea or task pops up
* User should be able to create subtasks

### Categorise

* User should be able to categorise tasks
* User should be able to create categories
* User should be able to create subcategories

### Prioritise 

* User should be able to reorganise tasks by priority

### Deadline

* User should be able to add deadline to a task
* User wants to see tasks that have a deadline of today



## Screens:

### Intray

* Should be able to add tasks here
* Should automatically remove items where deadlines have been set
* When removing an item:
  * If no project then add it to uncategorised
  * If project then add to project
* Should be able to decide whether it is a project or task

### Today/Week/Month/Year

* Should be able to show all tasks that are due this day/week/month/year
* Should be the over task and on tap show subtasks

### Projects

* List of projects
* Should be able to sort by date old, date new, project

### Profile

* Profile info

 

## Classes

* **User*

  * String userID;

  * String apiKey;

  * String firstName;

  * String lastName;

  * String email;

  * String password;

    

* **SupportFile:**

  * String text;

    

* **Projects:**

  * List<Task> tasks;
  * List<SupportFile> supportFiles;
  * String projectID;
  * String projectName;
  * Date deadline;
  * List<Date> reminder;



* **Task:**
  * List<Task> tasks;
  * String note;
  * double timeToComplete;
  * bool completed;
  * String repeats;
  * Date deadline;
  * List<Date> reminder;



## App Requirements

* Rest API
* Create classes
* Add items in the app
* Move items in hierarchy 
* Create add new task screen or window
* Create navigation bar
* Create intray top panel and button



