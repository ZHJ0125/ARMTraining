/*
 * YAFFS: Yet another FFS. A NAND-flash specific file system.
 *
 * Copyright (C) 2002-2018 Aleph One Ltd.
 *
 * Created by Timothy Manning <timothy@yaffs.net>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#include "yaffs_test_truncate.h"

int yaffs_test_truncate(arg_temp *args_struct)
{
	char path[200];
	char message[200];
	int output=0;
	join_paths(yaffs_struct.root_path,args_struct->string1, path );
	sprintf(message,"file path: %s\n",path);	
	print_message(3,message);

	output=yaffs_truncate(path,args_struct->int1);
	return output;
}
