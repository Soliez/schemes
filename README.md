# schemes.sh
Get a list of URL schemes registered by a iOS or Mac OS application

## Installation
**Step 1**: Clone this repository and move into it
```bash
$ git clone https://github.com/Soliez/schemes && cd schemes
```

**Step 2**: Make the script executable
```bash
$ chmod a+x schemes.sh
```


## Usage
```bash
$ ./schemes.sh <path/to/App.app>
```
## Example 

```bash
$ ./schemes.sh  /System/Applications/Notes.app
[
    "notes",
    "applenotes"
]
```
