Simple non polling universal AC power detection script.
The script does require systemd but this shouldn't be a problem for most people.

Main features:
 - No polling.
 - Multi-battery laptop support.
 - Multi-AC adapter support.

Example usage: 
```
$ ac-detect && flatpak update
```
Sudo permissions are not required to run the script.
This is a super basic example it can be combined with anything you might need.

Installation:
```
$ curl -sL https://github.com/SharkPlush/Bash-AC-Power-Detection/raw/refs/heads/main/install.sh | sudo sh
```
Just run that command and it will install the script into `/usr/local/bin`

Uninstallation:
```
$ sudo rm /usr/local/bin/ac-detect
```

As the sole copyright holder, I hereby permanently and irrevocably waive the requirements in Section 3(a)(1)(A)(i) (attribution/credit) and Section 3(a)(1)(B) (indication of modifications) of the CC BY-NC 4.0 license for this work. You are not required to credit me or list any changes, although both are appreciated. All other terms, including the NonCommercial restriction (no commercial use allowed), remain in full effect.

Shield: [![CC BY-NC 4.0][cc-by-nc-shield]][cc-by-nc]

This work is licensed under a
[Creative Commons Attribution-NonCommercial 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg
