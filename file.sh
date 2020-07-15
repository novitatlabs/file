#!/bin/sh

FILE_NAME_MACRO=${2//-/_}
FILE_NAME_PY=${2//-/_}
FILE_NAME_C=${2//_/-}

copyright_msg_py=$"
'''\n
# Copyrights (c) $(date +'%Y') Novitat Engineering Solutions LLP, Chennai and\n
# Invent Solutions Private Limited, Chennai.\n
# All rights reserved.\n
#\n
# This program and the accompanying materials are made available\n
# under the terms described in the LICENSE file which accompanies\n
# this distribution. If the LICENSE file was not attached to this\n
# distribution or for further clarifications, please contact\n
# legal@inventsoln.com\n'''"

copyright_msg_c=$"/* Copyrights (c) $(date +'%Y') Novitat Engineering Solutions LLP, Chennai and
 * Invent Solutions Private Limited, Chennai.
 * All rights reserved.
 *
 * This program and the accompanying materials are made available
 * under the terms described in the LICENSE file which accompanies
 * this distribution. If the LICENSE file was not attached to this
 * distribution or for further clarifications, please contact
 * legal@inventsoln.com\n*/\n"


if [ $1 = "c" ] || [ $1 = "C" ]; then
	source_msg=$copyright_msg_c"\n#include \"$FILE_NAME_C.h\"\n"
	header_msg=$copyright_msg_c$"\n#ifndef _${FILE_NAME_MACRO^^}_H_\n#define _${FILE_NAME_MACRO^^}_H_\n\n\n#endif"
	cfg_header_msg=$copyright_msg_c$"\n#ifndef _${FILE_NAME_MACRO^^}_CFG_\n#define _${FILE_NAME_MACRO^^}_CFG_\n\n\n#endif"
  echo -e "$source_msg" > $FILE_NAME_C.c
	echo -e "$header_msg" > $FILE_NAME_C.h
	echo -e "$cfg_header_msg" > $FILE_NAME_C-cfg.h
fi

if [ $1 = "cpp" ] || [ $1 = "CPP" ]; then
	source_msg=$copyright_msg_c$"\n#include \"$FILE_NAME_C.h\"\n"
	header_msg=$copyright_msg_c$"#ifndef _${FILE_NAME_MACRO^^}_H_\n#define _${FILE_NAME_MACRO^^}_H_\n\n\n#endif"
	cfg_header_msg=$copyright_msg_c$"#ifndef _${FILE_NAME_MACRO^^}_CFG_\n#define _${FILE_NAME_MACRO^^}_CFG_\n\n\n#endif\n"
  echo -e "$source_msg" > $FILE_NAME_C.cxx
	echo -e "$header_msg" > $FILE_NAME_C.h
	echo -e "$cfg_header_msg" > $FILE_NAME_C-cfg.h
fi

if [ $1 = "py" ] || [ $1 = "python" ]; then
	base_code=$copyright_msg_py
  echo -e $base_code > $FILE_NAME.py
fi
