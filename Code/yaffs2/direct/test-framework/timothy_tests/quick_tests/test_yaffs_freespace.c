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

#include "test_yaffs_freespace.h"



int test_yaffs_freespace(void)
{
	int output=0;
	output = yaffs_freespace(YAFFS_MOUNT_POINT);
	return output;
}


int test_yaffs_freespace_clean(void)
{
	return 1;
}

