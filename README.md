# schemes.sh
### Get a list of URL schemes registered by a iOS or Mac OS application.
### 
###


# Example Usage
### Invoking the script
```bash
$ ./schemes.sh <path/to/App.app>
```

### Outputs
```bash
$ ./schemes.sh  /System/Applications/Notes.app
[
    "notes",
    "applenotes"
]
```

# Installation
This script relies on one external dependency: 'jq', a command line json processor.
'jq' is not installed by default on Mac. You can install it using homebrew.

If you already have homebrew installed, continue to *step 4*. Otherwise, begin with *step 1*

### **Step 1**: Install Xcode Command Line Tools.
```bash
$ xcode-select --install
```
Or alternatively, install Xcode directly from the app store

---
### **Step 2**: Install homebrew
```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Go to homebrew website's: https://brew.sh
Copy the curl command at the top of the page and run it.

---
### **Step 3**: Install jq via homebrew
```bash
$ brew install jq
```

---
### **Step 4**: Clone this repository and move into it
```bash
$ git clone https://github.com/Soliez/schemes && cd schemes
```

---
### **Step 5**: Make the script executable
```bash
$ chmod a+x schemes.sh
```
