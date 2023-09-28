## Processes
#### e.g. 1CPU can deal with 1 process at a time
#### The command to list processes is `ps` 
#### `ps` - shows user processes - all processes have PID
#### PID - process ID , unique so can go to exact process using ID
#### PTS - process terminal session
#### `ps` --help simple : gives most useful flags for help
#### `ps -A` or `-e` gives back all processes 
#### `ps aux` - gives a lot of information about all of the process 
#### `top` - live readout of process are running
#### <shift> M in top will rank them in terms of memory
#### <shift> N in top will rank them by newest 
#### <shift> P will rank them by most cpu
#### try to use q to quit from those screens but can use ctrl Q
#### use & at the end of the command to run it in background
#### `kill -1 PID` - stops processes gently ,
#### `kill -15 PID` - stops processes forcefully , 
#### `kill -9 PID` - stops processes very forcefully ,

### Why is all of this useful in devops?
#### `ps` or `top`  enables us to see processes and to identify them via their PID. We can then kill them or move them to background if needed.

## Permissions

### As mentioned, `ls -l` shows permissions.
#### There are 3 sets of permissions to consider in Linux - owner, group and public.
#### `+` gives permisson 
#### `-` takes away permissions
#### `sudo chmod 777 <file>` gives permissions for all 
#### For numbers after chmod, the values are as follows: read +4 , write +2 , execute +1 .
#### Permissions Calculator Link :


## Environment Variables
#### `printenv <variable>` will show environment variables, if no variable is specified it will show all
#### `export MYNAME=DOZ` will store an environment variable MYNAME as Doz
#### These environment variables are not persistent - research how we can make them persistent
