# Useful Linux Commands

#### Shell is an interface that lets you run things e.g. powershell, bash(born again shell)
- ```uname```flags: `-a` : more info`-p` : type of processor
- `whoami` tells you who you are

- ```cat /etc/shells``` cat prints the contents of the file
- .sh is the shell extension
- ```history``` - will give your past 500 commands in the shell 
- ```history -c``` will reset your history typically used for data protection e.g. passwords
- ```ls``` or ```ls -a```
- ```curl``` will download something, in linux need to tell it to go to a file
- ```curl <url> --output cat.jpg``` e.g. 
-``` curl https://cdn.britannica.com/39/7139-050-A88818BB/Himalayan-chocolate-point.jpg --output cat.jpg```
- ```file ``` will tell you info about a file 
- ```mv``` : move 
- ```mv``` can rename or move files or folders
- e.g.``` mv cat.jpg cat``` will 'move' cat.jpg to being cat
- ``` cp ``` will copy files and folders
- ``` mkdir``` need to use double quotes for spaces but avoid 
- ```rm -r``` r stands for recursive 
- ``` touch ``` touches a file, can be used to make a new blank file
- ```nano ``` makes a file and opens up a text editor for you to edit the file
- in nano, `^` means ctrl
- ```head -2 chicken-joke.txt``` will bring back the top -number of lines back
- ``` tail works in the same way```
- ```nl ``` counts the lines in a text file (numbered lines)
- ``` grep ``` print out any lines that contain some characters
- ```|``` chains certain commands together
- ``` apt ``` used to install similar to pip
- ``` sudo ``` (super user do)gives super user permissions for a particular command
- root is the absolute root of the system, i.e. C://
- Different to root user which you can change to using `sudo su`
- You can use `exit` to exit from root user