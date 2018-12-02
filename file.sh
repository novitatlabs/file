#!/bin/sh

AUTHOUR_NAME="yogeshwaran"
MAIL_ID="yogeshwaran@novitatlabs.com"
FILE_NAME=${2//-/_}
copyright_msg=$"/**\nCopyrights (c) $(date +'%Y') Novitat Engineering Solutions LLP, Chennai.\nAuthor: $AUTHOUR_NAME [$MAIL_ID]\nCreated on: $(date)\n**/\n"

if [ $1 = "c" ] || [ $1 = "C" ]; then
	source_msg=$copyright_msg$"#include \"$2.h\"\n"
	header_msg=$copyright_msg$"#ifndef _${FILE_NAME^^}_\n#define _${FILE_NAME^^}_\n\n\n#endif"
    echo -e $source_msg > $2.c
	echo -e $header_msg > $2.h
fi

if [ $1 = "cpp" ] || [ $1 = "CPP" ] || [ $1 = "CPP" ]; then
	source_msg=$copyright_msg$"#include \"$FILE_NAME.h\"\n"
	header_msg=$copyright_msg$"#ifndef _${FILE_NAME^^}_\n#define _${FILE_NAME^^}_\n\n\n#endif"
    echo -e $source_msg > $2.cpp
	echo -e $header_msg > $2.h
fi

if [ $1 = "py" ] || [ $1 = "python" ]; then
	base_code=$copyright_msg$"\ndef main():\n\n\n\nif __name__ == \"__main__\":\n\tmain()"
    echo -e $base_code > $2.py
fi
