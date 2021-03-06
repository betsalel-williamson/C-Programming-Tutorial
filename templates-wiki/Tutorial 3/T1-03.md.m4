__project_under_construction_flag__
# Step 3: Version Control 101
With this step you will get a crash course in version control using the Git system and download the rest of the code for you to follow along. Again, nothing is stopping you from looking at the answers to complete this tutorial, but it is for your benefit to sweat things out and to use your critical thinking skills to work through any problems you have as a first step before jumping to the answers. So why are we telling you to download the answers? We are teaching you here about downloading the code from the internet in a way that will allow you to save changes to your code and come back to them later.

_One summer, I was working in a research laboratory that was working with an advanced AI company to test some new image recognition algorithms. The researchers built their software and it was my job to create a website that would allow the company to run the software remotely. There was a very important demo and deadline that we were under and it was my job to ensure that come demo-day, that the company would be able to run the software. After spending 70 hours creating the software over 4 days I told my boss that I had gotten the software developed to a point, but that it needed to be run using the web interface on localhost because of a networking issue. I had been programming my code and saving everything with Git. The demo was to go live on Friday at 1 pm and the last day before the demo I worked from Thursday morning through until Friday at 6 am._ 

_When I left the office I had run the program again, and again to ensure that it worked. I set my alarm for 10 am so that I could talk to my boss in person before the demo, left a message with him over the phone and went to bed._ 

_When I woke up, I didn't hear my alarm and looked at the time. It was 12:50 pm. I scrambled to my phone to see 5 missed calls and many texts from my boss and the researcher I was working with asking where I was because nothing was working! I hopped on the phone and talked to a very distraught researcher who had attempted to change my code to fix the networking issue before the demo and now nothing was working._ 

_In a matter of 30 seconds I told him over the phone. "Open up a terminal. Type: cd /Documents/Repos/" he changed directories to the project. "You there? Ok. Next type: git stash, then ./build && ./deploy". I waited for the build and deploy process to run and then heard "Things are running! Thank you!"_ 

_Had I not been using version control software, they would have had to cancel the demo and wait for me to drive 30 minutes to the lab, and then we would have to go through each line of code that the researcher changed and maybe get things back online. With the version control, I knew it worked last night, so all they had to do was revert all of the changes they attempted to make when I wasn't there._

## Part 1 Download
Open up your shell and navigate to your code directory created in the previous step. Change directories (cd) into `Code` and execute the following command:

```
$ git clone __project_repo__
```

You should see the shell telling you that it is cloning into ‘{{}}__project_repo_name__{{}}’. When it has finished, cd into `{{}}__project_repo_name__{{}}`. 

As a quick tip, you can press the TAB key after typing in SERC to auto-complete the rest of the folder. Most shells will have this auto-completion feature (if the Shell auto-complete feature is not working, use the internet to search your specific shell and find out how to enable it) .

## Part 2 Git Configuration Files

By default, Git will try to save everything in the current directory structure including temporary files that you may make or hidden files created by your operating system. This isn't a good idea. Additionally, there are assumptions that it makes about how you would like to look at files and how they should be stored. To solve the first problem we can ignore files and directories with a `.gitignore` file. To solve the second problem we can use a `.gitattributes` file which will store information about different file types based on the file extension.

When you run the `ls` command in the SERC project root directory you will see only the entries `answers` and `README.md`. The reason for this is the by default, any files that start with a period are treated as hidden files by the Shell. To have them listed you will need to pass the `ls` command optional arguments `-l` and `-a`. Often, command-line arguments can be combined into a shorthand for you to be able to type `-la`. We will show you why later on in the last part of this first tutorial.

```
$ ls -la
```

You should now see the `.gitignore` and `.gitattributes` file in addition to a `.git` folder. The additional information to the left will tell you information about the files. The `.git` folder is where all the information about the state of the project is stored for the Git program to know how to keep track of your project over time. For more information about Git see the references section.

## Part 3 Branch

Because sometimes you want to go down a rabbit hole and try something out, or share your project with other people, we will introduce you to the concept of code branches. This topic will be covered more in detail later on. For now know that Git will store the information by default in the branch with the name `main`. It is a best practice after you finish the initial steps in setting up your repository to start a branch named `develop` and work from it. 

In a professional environment, all work should be done in a specific `features` branch, and then merged to the `develop` branch only when you have finished a feature and tested that it works. A merge will synchronize the changes between these two branches. We will wait to cover merging in the later Git tutorial.

Now, we are going to create our own unique branch of the develop branch called `hotfix/YOURNAME-fix-hello-world-bug` where you replace `YOURNAME` with your name. Since we are using kebab-case, be sure to use all lower-case letters and to insert a `-` symbol between each word.

_Guide to programming case types - <https://www.chaseadams.io/most-common-programming-case-types/>_

1. Make sure that we are working in the latest develop branch
1. Create your new branch from develop

	```
	$ git pull --all
	$ git checkout -b hotfix/YOURNAME-fix-hello-world-bug develop
	```

## Part 4 Edit

We are now going to walk you through the process of saving and reverting a change to this code. The result of this is like saving a word document and realizing that you wanted to go back to what you had yesterday. This is a very useful feature in code writing because you will often work on getting your program to work only to realize that something you did today broke everything! If only you could go back to yesterday’s work!

This will only be possible if you save your work early and often! It is ok to save in progress work when working on a project by yourself. When you start coordinating and working with other programmers you will need to be a little more careful, but the general rule is that you should still save early and often. Better create a branch that you can save in-progress work than to delay saving your work. Unlike Word, or Sublime, there is no default auto-save feature in Git. We can show you enough using TCL/Expect to mimic this autosave feature in the later tutorial.

1. Open up your `hello-world.tcl` document
1. Change the line with:
	```
	spawn echo "Hello World from TCL/Expect!"
	```
	To:
	```
	spawn echo "Hello SERC!"
	```
1. Modify the file so that when you execute it (`$ expect hello-world.tcl`) you get the "Success!" message.

## Part 5 Save and Commit
We will now tell Git that we have changes we would like it to track. Git show us what it thinks has changed.

```
$ git status

On branch hotfix/YOURNAME-fix-hello-world-bug

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    	modified:   hello-world.tcl

no changes added to commit (use "git add" and/or "git commit -a")

$ git add -A 
$ git status

On branch hotfix/YOURNAME-fix-hello-world-bug

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

    	modified:   hello-world.tcl

$ git commit -m "Changed from hello world to hello serc."
[hotfix/YOURNAME-fix-hello-world-bug a238475] Changed from hello world to hello serc.
 1 file changed, 2 insertions(+), 2 deletions(-)
```

What happened in this last step was that we first told Git to consider everything in the project directory that changed, and then to save it. This procedure as applied to a text document would be like telling Word which paragraph you wanted save before hitting the save button. This will allow you to pick and choose which code changes you want included. It is a useful feature when you need it. Often we will just use `git add -A`.

## Part 6 Revert

With this next step we will undo the change that you just made. With Git, there are options for you to consider when reverting. For simplicity, we will assume that you want to keep the files as they are and only change the history in Git. See the references and later tutorial for more information about this topic.

Since we only need to change and go back to the previous commit we first check where we are in the Git history with the command:

```
$ git reflog
```

You should see that we have only made one commit.

TODO print output of reflog and reset

To go back to the previous state:

```
$ git reset HEAD~1
```

We can run the `git reflog` command again and see that we have changed the Git history and it now shows we added something, but then reverted the change. Looking into this command, the `reset` argument needs to know how many steps we go back. We tell it the one previous commit from the latest point in Git's commit history.

## Summary

You now have gone through a quick tutorial on using a version control system to save your work. We encourage you to continue to use the following commands to save your progress which will allow you to go back in time. This will save you a lot of headache if you get into this habit. Save early and often!

The command to run is:

```
$ git add -A && git commit "Updated code"
```

Replace the text between the quotes with a short comment on what you did in this commit that can help you remember what you changed in this latest commit.

If you are already familiar with Git you may have noticed that we did not tell you about pushing the changes or saving the changes back to the cloud. We will be covering this in the later tutorial.

## References
1. Quick start guide to Git - <https://rogerdudler.github.io/git-guide/>
1. Git main website - <https://git-scm.com/>
1. Highly recommended GUI version of Git - <https://www.gitkraken.com/>
1. StackOverflow on Git reverting - <https://stackoverflow.com/questions/927358/how-to-undo-the-most-recent-commits-in-git#927386>
1. Answer - <{{}}__project_repo_source_root__{{}}/T1/step-3-version-control-101>

# Updates
* Jan 1, 2021 - Generated from m4 template

[[Previous Page|T1-02]] | [[Next Page|T1-04]]