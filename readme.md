## Docker Jenkins Demo

This repository will run a jenkins instance on docker. After that, we will create a simple Jenkins job
which periodically builds a code.

### Prerequisites
1) Ubuntu18.04
2) Docker should be installed on the host machine

>> Assumption: We will assume that docker is already installed on the host machine

### Launch Jenkins on Docker
- Step 1) Simple execute the myscript.sh in terminal
- Step 2) visit http://localhost:8080/

### Create a Jenkins JOB
- Create a new job via "New Item" in Dashboard
- In "Enter an item Name" -> put "Hello World"
- Select "Freestyle project"
- In "Source Code Management" -> SElect Git
    -   In "Repository URL" -> https://github.com/raj19986/HelloWorldJava.git
- In "Build Triggers" -> Select "Build periodically"
    - In "Schedule" -> 0 */1 * * *
- Select "Add Build Step"
    - Select "Execute Shell"
    - Now in "Command", type following:
        - ```bash
            javac HelloWorld.java
            java HelloWorld
          ```
- Finally "Save" the job configuration


### RUN
- SELECT "Build Now" for "Hello World" job.
- CAn see the logs in "Console Output"

