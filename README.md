<h1 align="center">
	🧾 🔁 📝 
	</br>
	minitalk 
</h1>

<p align="center">
	<b><i>Small data exchange program using UNIX signals</i></b><br>
</p>
<p align="center">
	For further information about 42 Malaga and its projects, please refer to <a href="https://github.com/amiguelmoreno/42-Malaga"><b>42 Malaga repo</b></a>.
</p>


# Table of Contents

- [1 - Goal](#1---goal)
- [2 - Analysing the subject](#2---analysing-the-subject)
	- [2.1 - Requirements](#21---requirements)
	- [2.2 - Communication between server and client (two way channel)](#22---communication-between-server-and-client-two-way-channel)
- [3 - Implementation](#3---implementation)
	- [3.1 - Allowed functions](#31---allowed-functions)
		- [3.1.1 - Libft](#311---libft)
		- [3.1.2 - Other functions](#312---other-functions)
- [4 - Resources](#4---resources)


# 1 - Goal
The purpose of this project is to code a small data exchange program using UNIX signals.

# 2 - Analysing the [subject](pdf/42cursus_Minitalk_v2.pdf)

## 2.1 - Requirements

>You must create a communication program in the form of a client and a server.
>- The server must be started first. After its launch, it has to print its PID.
>- The client takes two parameters: 1) The server PID 2) The string to send.
>- The client must send the string passed as a parameter to the server. Once the string has been received, the server must print it.
>- The server has to display the string pretty quickly. Quickly means that if you think it takes too long, then it is probably too long.
>- Your server should be able to receive strings from several clients in a row without needing to restart.
>- The communication between your client and your server has to be done only using UNIX signals.
>- You can only use these two signals: SIGUSR1 and SIGUSR2.

## 2.2 - Communication between server and client (two way channel)

>- The server has to display the string pretty quickly. Quickly means that if you think it takes too long, then it is probably too long.

Researching about the theme, two options arise: 

- using a delay function like `sleep()` or `usleep()` avoiding the communication of signals back and forward between server/client, which would impose a delay per char, since we would be sending in blind way (no feedback loop) chars from client to server. Depending on the delay set signals could queue.

- the other option would be to implement a feedback loop so whenever client sends a char to server, it waits till server sends back a ACK signal informing client that the next bit can be sent. This later solution should be a lot quicker since there would be no delay function. This solution is aligned with the bonus: `The server acknowledges every message received by sending back a signal to the client.`

As noted on the subject, there should not be sent signals blindly, making the two-way communication the best implementation.
> Linux system does NOT queue signals when you already have pending signals of this type!  Bonus time?

</br>

# 3 - Implementation

## 3.1 - Allowed functions

### 3.1.1 - Libft

The subject states that [libft](https://github.com/pvaladares/42cursus-00-Libft) library can be used!
> You can definitely use your libft.

Reading the subject it can be understood some functions included in the `libft` will be required to fulfill the requirements, as shown below:
> The server must be started first. After its launch, it has to print its PID.
> - The client takes two parameters:
>     - The server PID.
>     - The string to send.
- `ft_atoi()`, to convert the PID argument received from command line to integer type for further processing of signal processing

### 3.1.2 - Other functions

Below is made a brief analysis of other functions that can be used.

> In order to complete the mandatory part, you are allowed to use the following functions:
> - write
> - [ft_printf](https://github.com/pvaladares/42cursus-01-ft_printf) and any equivalent YOU coded 
> - signal
```c
sig_t signal(int sig, sig_t func);
```
```man
This signal() facility is a simplified interface to the more general sigaction(2) facility.
(...)
some signals instead cause the process receiving them to be stopped, or are simply discarded
if the process has not requested otherwise.  
Except for the SIGKILL and SIGSTOP signals, the signal() function allows for a signal to be 
caught, to be ignored, or to generate an interrupt.
These signals are defined in the file <signal.h>:

           Name             Default Action       Description
     1     SIGHUP           terminate process    terminal line hangup
     2     SIGINT           terminate process    interrupt program 
(...)
     30    SIGUSR1          terminate process    User defined signal 1
     31    SIGUSR2          terminate process    User defined signal 2  

The sig argument specifies which signal was received.  
The func procedure allows a user to choose the action upon receipt of a signal.

The handled signal is unblocked when the function returns and the process continues 
from where it left off when the signal occurred.

For some system calls, if a signal is caught while the call is executing and the call is 
prematurely terminated, the call is automatically restarted.  
Any handler installed with signal(3) will have the SA_RESTART flag set, 
meaning that any restartable system call will not return on receipt of a signal.  

The affected system calls include read(2), write(2), sendto(2), recvfrom(2), sendmsg(2), 
and recvmsg(2) on a communications channel or a low speed device and during a ioctl(2) or wait(2).
However, calls that have already committed are not restarted, but instead return a partial success
(for example, a short read count).  
These semantics could be changed with siginterrupt(3).
     
See sigaction(2) for a list of functions that are considered safe for use in signal handlers.

The previous action is returned on a successful call.  
Otherwise, SIG_ERR is returned and the global variable errno is set to indicate the error.
     
macOS 12.4                      June 7, 2004                      macOS 12.4
```

> - kill

Using `kill()` to check the PID server input

```man
DESCRIPTION
     The kill() function sends the signal specified by sig to pid, a process or
     a group of processes.  Typically, Sig will be one of the signals specified
     in sigaction(2).  A value of 0, however, will cause error checking to be
     performed (with no signal being sent).  This can be used to check the
     validity of pid.
````
  
This is a nice finding to check the validity of the PID in a robust way, rather than just checking if all the chars are digits.
  
```man
     If pid is greater than zero:
             Sig is sent to the process whose ID is equal to pid.

     If pid is zero:
             Sig is sent to all processes whose group ID is equal to the process
             group ID of the sender, and for which the process has permission;
             this is a variant of killpg(2).

     If pid is -1:
             If the user has super-user privileges, the signal is sent to all
             processes excluding system processes and the process sending the
             signal.  If the user is not the super user, the signal is sent to
             all processes with the same uid as the user, excluding the process
             sending the signal.  No error is returned if any process could be
             signaled.
```         
    

> - getpid

```c
pid_t getpid(void);
```
```man
DESCRIPTION
     getpid() returns the process ID of the calling process.  The ID is
     guaranteed to be unique and is useful for constructing temporary file
     names.
```

> - malloc
> - free
> - pause
```c
int pause(void);
```
```man
DESCRIPTION
     The pause() function causes the calling thread to pause until a signal is
     received from either the kill(2) function or an interval timer.  (See
     setitimer(2).) Upon termination of a signal handler started during a
     pause(), the pause() call will return.
```
> - sleep
> - usleep
```c
int usleep(useconds_t microseconds);
```
```man
DESCRIPTION
     The usleep() function suspends execution of the calling thread until either
     microseconds have elapsed or a signal is delivered to the
     thread and its action is to invoke a signal-catching function or to
     terminate the process.  System activity or limitations may lengthen the
     sleep by an indeterminate amount.

     This function is implemented using nanosleep(2) by pausing for microseconds
     microseconds or until a signal occurs.  Consequently, in this
     implementation, sleeping has no effect on the state of process timers, and
     there is no special handling for SIGALRM.  Also, this implementation does
     not put a limit on the value of microseconds (other than that limited by
     the size of the useconds_t type); some other platforms require it to be
     less than one million.
```
> - exit
```man
DESCRIPTION
     The exit() function terminates a process.

     Before termination, exit() performs the following functions in the order
     listed:

           1.   Call the functions registered with the atexit(3) function, in
                the reverse order of their registration.

           2.   Flush all open output streams.

           3.   Close all open streams.

           4.   Unlink all files created with the tmpfile(3) function.

     Function make the low-order eight bits of the status argument available to 
     a parent process which has called a wait(2)-family function.
     
     The C Standard (ISO/IEC 9899:1999 (“ISO C99”)) defines the values 0,
     EXIT_SUCCESS, and EXIT_FAILURE as possible values of status.
```

# 4 - Resources
- [Sending and Handling Signals in C (kill, signal, sigaction)](https://www.youtube.com/watch?v=83M5-NPDeWs)
- [Communicating between processes using signals](https://www.youtube.com/watch?v=PErrlOx3LYE)
- [Good reading about how to approach the project](https://github.com/mlanca-c/Minitalk/wiki)
- [Checking for Pending Signals](https://www.gnu.org/software/libc/manual/html_node/Checking-for-Pending-Signals.html)
- [Introduction To Unix Signals Programming](http://www.cs.kent.edu/~ruttan/sysprog/lectures/signals.html)
