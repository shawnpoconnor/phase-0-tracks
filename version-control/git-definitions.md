# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control allows programers to work and test programs by creating separate branches of a program and then merging them together. This allows programers to work on certain features without worrying about breaking their working version. It also allows them to create save points so they can return to earlier versions should they wish.

* What is a branch and why would you use one?

A Branch is a separate version of your program. Branches are cloned from a Master Branch and share a lot of the functionality, however can be worked on separately without fear of changing the actual master file.

* What is a commit? What makes a good commit message?

A Commit in Git is when someone finishes working on certain features of a program branch and wishes to save them and make a checkpoint. Ideally you would be committing early and often. You also want to provide a very descriptive comment so that whoever is reviewing your commit knows exactly where and what to look for when they are checking what's been added or changed. The more you commit, the more checkpoints you create, and the more options you have when returning to your previous project should you want to go a different direction.

* What is a merge conflict?

A merge conflict occours when two or more people attempt to modify the same line of code and merge their two branches. Git can't decide between the two and bounces back a special block asking you to pick which line of code it should include in the new merged branch.