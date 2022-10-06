Everyone that entered this Github Repo asks:
How to fix Termux apt error with libapt-pkg.so?

Now you can fix it without any problem.

First, Download the files from Releases,
Then, Go to Termux,
After that, Run the command below:

Now run the command below for the apt_termux.deb file:
> dpkg -i /sdcard/Download/apt_termux.deb

Change the file path if it's not the same one as the command above.
If you don't know how to change the path,
Just change the <YourPath/apt_termux.deb> to the file path in the command below:
> dpkg -i <YourPath/apt_termux.deb>

Now, let's run another command for the libc++_termux.deb file.
and again, change <YourPath/libc++_termux.deb> to the file path in the command below:
> dpkg -i <YourPath/libc++_termux.deb>

And now when you're done with that,
It's not done yet even if you fixed the apt problem.
You need to follow the guide below:

First, run the command below:
> termux-change-repo

Now click Enter,
And go down to Mirror by A1batross option using the arrow buttons above the keyboard,
Now click Enter, and you're done!

Good luck!
