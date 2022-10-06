Everyone that entered this Github Repo asks:
How to fix Termux apt error with libapt-pkg.so?


Now you can fix it without any problem.

First, Go to Termux and Run a command:
> uname -m

Then, See what the command said,

If it said aarch64, Download the two .deb files from "Files for aarch64" in Releases.

If it said "arm", Download the two .deb files from "Files for arm" in Releases.

If it said i686, Download the two .deb files from "Files for i686" in Releases.

If it said x86_64, Download the two .deb files from "Files for x86_64" in Releases.

After you downloaded the files, Go to Termux again,

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
