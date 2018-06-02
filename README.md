# FILE CREATION TOOL

A script to create a file with copyright comments and guard macros. As for now, the tool suppports C, C++ and Python.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Your system should capable of running bash scripts. For windows users, we recommend using git bash tool.

### How to use?

Copy and paste the file.sh in your project folder. Edit the Authour name and e-mail id.

```
AUTHOUR_NAME="yogeshwaran"
MAIL_ID="yogesh@novitatlabs.com"
```

The command execution is here under:
To create C code use,
```
./file.sh c <file-name>
```

To create C++ code use,
```
./file.sh cpp <file-name>
```
This will create source file and header file with copyright message, author name, e-mail, time and date of file creation.

To create Python code use,
```
./file.sh py <file-name>
```
This will create a python file with copyright message, author name, e-mail, time and date of file creation.

## Authors

* **Yogeshwaran** - *yogesh@novitatlabs.com*

## License

This project is yet to be licensed.

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

