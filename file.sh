#!/bin/sh

AUTHOUR_NAME="yogeshwaran"
MAIL_ID="yogesh@novitatlabs.com"

if [ $1 = "c" ] || [ $1 = "C" ]; then
	copyright_msg=$"/**\nCopyrights (c) 2018 Novitat Engineering Solutions, Chennai.\nAuthor: $AUTHOUR_NAME [$MAIL_ID]\nCreated on: $(date)\n**/\n"
	source_msg=$copyright_msg$"#include \"$2.h\"\n"
	header_msg=$copyright_msg$"#ifndef _${2^^}_\n#define _${2^^}_\n\n\n#endif"
    echo -e $source_msg > $2.c
	echo -e $header_msg > $2.h
fi

if [ $1 = "cpp" ] || [ $1 = "CPP" ] || [ $1 = "CPP" ]; then
	copyright_msg=$"/**\nCopyrights (c) 2018 Novitat Engineering Solutions, Chennai.\nAuthor: $AUTHOUR_NAME [$MAIL_ID]\nCreated on: $(date)\n**/\n"
	source_msg=$copyright_msg$"#include \"$2.h\"\n"
	header_msg=$copyright_msg$"#ifndef _${2^^}_\n#define _${2^^}_\n\n\n#endif"
    echo -e $source_msg > $2.cpp
	echo -e $header_msg > $2.h
fi

if [ $1 = "py" ] || [ $1 = "python" ]; then
	copyright_msg=$"'''\nCopyrights (c) 2018 Novitat Engineering Solutions, Chennai.\nAuthor: $AUTHOUR_NAME [$MAIL_ID]\nCreated on: $(date)\n'''\n"
	base_code=$copyright_msg$"\ndef main():\n\n\n\nif __name__ == \"__main__\":\n\tmain()"
    echo -e $base_code > $2.py
fi
