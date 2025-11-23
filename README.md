NOTE: This is mostly untested, so if you are willing to test or better yet provide fixes / optimizations feel free to do so.

This wrapper is meant to be used in conjunction with a systemd service to wrap around certain service you don't want running while on battery power.

The wrapper doesn't use polling so no extra battery drain will happen while it waits for AC power.

This wrapper should be very adaptive to whatever you need not just systemd.

Examples:

 - Auto updates can be made to "wait" for AC power rather than run on battery power.
 - Backup services can be made to run on AC power only rather than battery.

How the wrapper works:

 1. Wrapper gets executed.
 2. Wrapper check if you device is a PC or a mobile device.
   - If the device is a PC all the battery checking logic gets ignored and executes whatever you need.
   - BUT if the device is a mobile device the wrapper checks if its on AC power or not.
 3. The wrapper checks if the device is on AC power.
   - If the device is on AC power then it will execute whatever you need.
   - If the device is off AC power then it triggers function that will wait for AC power and once it receives AC power it will execute whatever you need.
  
Main features:
 
 - PC detection.
 - No polling.
 - Multi-battery laptop support!

 TODO:

 - The script cannot handle devices with multiple "line_power_" I don't know how to fix this would like some help please.

WARNING: Before installing please check:

```console
upower -e
```

If you have multiple "line_power_" outputs the script will probably not work. If you can please beta test the beta branch for this [here](https://github.com/SharkPlush/Aeon-AC-update-detection/tree/Multi-Line-Power-Beta).

To install, modify the wrapper to your needs and place it in /usr/local/bin/

In the in the executable I've left comments on where you need to modify for your needs.

As the sole copyright holder, I hereby permanently and irrevocably waive the requirements in Section 3(a)(1)(A)(i) (attribution/credit) and Section 3(a)(1)(B) (indication of modifications) of the CC BY-NC 4.0 license for this work. You are not required to credit me or list any changes, although both are appreciated. All other terms, including the NonCommercial restriction (no commercial use allowed), remain in full effect.

Shield: [![CC BY-NC 4.0][cc-by-nc-shield]][cc-by-nc]

This work is licensed under a
[Creative Commons Attribution-NonCommercial 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg
