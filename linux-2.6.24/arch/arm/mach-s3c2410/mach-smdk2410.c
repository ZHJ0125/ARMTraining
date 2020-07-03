/* linux/arch/arm/mach-s3c2410/mach-smdk2410.c
 *
 * linux/arch/arm/mach-s3c2410/mach-smdk2410.c
 *
 * Copyright (C) 2004 by FS Forth-Systeme GmbH
 * All rights reserved.
 *
 * $Id: mach-smdk2410.c,v 1.1 2004/05/11 14:15:38 mpietrek Exp $
 * @Author: Jonas Dietsche
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 *
 * @History:
 * derived from linux/arch/arm/mach-s3c2410/mach-bast.c, written by
 * Ben Dooks <ben@simtec.co.uk>
 *
 ***********************************************************************/

#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/interrupt.h>
#include <linux/list.h>
#include <linux/timer.h>
#include <linux/init.h>
#include <linux/serial_core.h>
#include <linux/platform_device.h>

#include <asm/mach/arch.h>
#include <asm/mach/map.h>
#include <asm/mach/irq.h>

#include <asm/hardware.h>
#include <asm/io.h>
#include <asm/irq.h>
#include <asm/mach-types.h>

#include <asm/plat-s3c/regs-serial.h>

#include <asm/plat-s3c24xx/devs.h>
#include <asm/plat-s3c24xx/cpu.h>

#include <asm/plat-s3c24xx/common-smdk.h>

/* ZhangHoujin Edited in 2020.06.29 */
#include <asm/arch/fb.h>
#include <linux/platform_device.h>
static struct s3c2410fb_display up2410_fb[] __initdata = 
{
	{
		.lcdcon5 = (1<<12)|(1<<11)|(1<<9)|(1<<8)|(1<<0),
		.type = (3<<5),
		.width = 640,
		.height = 480,
		.pixclock = 39721,
		.xres = 640,
		.yres = 480,
		.bpp = 16,
		.left_margin = 40,
		.right_margin = 32,
		.hsync_len = 32,
		.vsync_len = 2,
		.upper_margin = 35,
		.lower_margin = 5,
	},
};

static struct s3c2410fb_mach_info up2410_fb_info __initdata = 
{
	.displays = up2410_fb,
	.num_displays = 1,
	.default_display = 0,
	.gpcup = 0xffffffff,
	.gpcup_mask = 0x0,
	.gpccon = 0xaaaaaaaa,
	.gpccon_mask = 0x0,
	.gpdup = 0xffffffff,
	.gpdup_mask = 0x0,
	.gpdcon = 0xaaaaaaaa,
	.gpdcon_mask = 0x0,
	.lpcsel = 0,
};
static struct resource s3c_dm9ks_resource[] = {
	[0] = {
		.start = 0x10000000,
		.end = 0x10000040,
		.flags = IORESOURCE_MEM,
	},
	[1] = {
		.start = IRQ_EINT2,
		.end = IRQ_EINT2,
		.flags = IORESOURCE_IRQ,
	},
};

struct platform_device s3c_device_dm9ks = {
	.name = "s3c2410-dm9ks",
	.id = -1,
	.num_resources = ARRAY_SIZE(s3c_dm9ks_resource),
	.resource = s3c_dm9ks_resource,
};

/* End of Edited */

static struct map_desc smdk2410_iodesc[] __initdata = {
  /* nothing here yet */
};

#define UCON S3C2410_UCON_DEFAULT
#define ULCON S3C2410_LCON_CS8 | S3C2410_LCON_PNONE | S3C2410_LCON_STOPB
#define UFCON S3C2410_UFCON_RXTRIG8 | S3C2410_UFCON_FIFOMODE

static struct s3c2410_uartcfg smdk2410_uartcfgs[] __initdata = {
	[0] = {
		.hwport	     = 0,
		.flags	     = 0,
		.ucon	     = UCON,
		.ulcon	     = ULCON,
		.ufcon	     = UFCON,
	},
	[1] = {
		.hwport	     = 1,
		.flags	     = 0,
		.ucon	     = UCON,
		.ulcon	     = ULCON,
		.ufcon	     = UFCON,
	},
	[2] = {
		.hwport	     = 2,
		.flags	     = 0,
		.ucon	     = UCON,
		.ulcon	     = ULCON,
		.ufcon	     = UFCON,
	}
};

static struct platform_device *smdk2410_devices[] __initdata = {
	&s3c_device_usb,
	&s3c_device_lcd,
	&s3c_device_wdt,
	&s3c_device_i2c,
	&s3c_device_iis,
	&s3c_device_dm9ks,
};

static void __init smdk2410_map_io(void)
{
	s3c24xx_init_io(smdk2410_iodesc, ARRAY_SIZE(smdk2410_iodesc));
	s3c24xx_init_clocks(0);
	s3c24xx_init_uarts(smdk2410_uartcfgs, ARRAY_SIZE(smdk2410_uartcfgs));
}

static void __init smdk2410_init(void)
{
	platform_add_devices(smdk2410_devices, ARRAY_SIZE(smdk2410_devices));
	smdk_machine_init();
	s3c24xx_fb_set_platdata(&up2410_fb_info);
}

MACHINE_START(SMDK2410, "SMDK2410") /* @TODO: request a new identifier and switch
				    * to SMDK2410 */
	/* Maintainer: Jonas Dietsche */
	.phys_io	= S3C2410_PA_UART,
	.io_pg_offst	= (((u32)S3C24XX_VA_UART) >> 18) & 0xfffc,
	.boot_params	= S3C2410_SDRAM_PA + 0x100,
	.map_io		= smdk2410_map_io,
	.init_irq	= s3c24xx_init_irq,
	.init_machine	= smdk2410_init,
	.timer		= &s3c24xx_timer,
MACHINE_END


