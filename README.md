# msmeds-ecg

### overview
---
A simple webpage to simulate a 12 lead ECG machine with a laptop or tablet.  You must make PDFs of your desired 12 leads to be displayed.  A script is run to create webpages from the PDF files.

#### dependencies
---
* linux laptop
* bash

### setup
---
msmeds-ecg is not really installed, it is only a set of files to be opened on a web browser.  You will need to run the Make-Pdf-list script when new PDFs are added to the folder.  The device should be put on a rolling cart or laptop stand.  Attach real 12 leads, tie to stand a hidden manner.  The leads could even be attached to a USB cable without wiring and plugged directly into th laptop to give the apperance they are real.

* Update computer

```sh
sudo apt update
sudo apt upgrade
```

* Download the repo file

```sh
# clone repo
git clone https://github.com/dbestcode/msmeds-ecg.git
# enter directory
cd msmeds-ecg/pdf
```

* Load ECG pdfs into this folder

```sh
# run html build script
./Make-Pdf-List.sh

# You can delete the old HTML files each time you add more PDFs to the directory.
```


### getting started
---
* Click on 'index.html' in the main directory to start, it will open in your default web browser
* There are 3 functions:
    * Run EKG(12 lead)
        opens a list of ecgs
        Clicking will display the 12 ecg(or what ever PDF has been loaded)
    * Lead Locations
        Displays pictures of where lead should be placed
    * Help
        Take machine to the bedside.
        On the home screen page, click 'New'
        Locate your patient in the list, old results may also show so choose the newest one visible
        You are not required to apply leads in simulation
        The ekg will show on a new page.
        Call the provider with the results.
