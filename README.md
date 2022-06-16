# msmeds-ecg

### overview
---
A simple webpage to simulate a 12 lead machine with a laptop or tablet.  You must make PDFs of your desired 12 leads to be displayed.

### dependencies
---
* bash

### setup
---
* Update before you install anything

```sh
sudo apt update
Sudo apt upgrade
```


Download the repo file, and run the following commands or read the install.sh file and place the files.

```sh
# clone repo
git clone https://github.com/dbestcode/msmeds-ecg.git
# enter directory
cd msmeds-ecg/pdf
```
Load 12 pdfs into this folder and then run
```sh
# run html build script
./Make-Pdf-List.sh
```



### getting started
---
Open index.html in the main directory to start
