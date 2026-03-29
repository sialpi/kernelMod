#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

static int __init sialpi_init(void)
{
    printk(KERN_INFO "Sialpi module: loaded\n");
    return 0;
}

static void __exit sialpi_exit(void)
{
    printk(KERN_INFO "Sialpi module: unloaded\n");
}

module_init(sialpi_init);
module_exit(sialpi_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("sialpi");
MODULE_DESCRIPTION("Kernel module");

