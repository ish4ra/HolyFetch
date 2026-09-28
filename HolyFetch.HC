// HolyFetch
// A lightweight TempleOS system information tool written entirely in HolyC.

#define HOLYFETCH_VERSION "0.1.0"

U0 HolyFetchLogo()
{
    "$$GREEN$$        /\\        $$FG$$\n";
    "$$GREEN$$       /  \\       $$FG$$\n";
    "$$GREEN$$      / /\\ \\      $$FG$$\n";
    "$$GREEN$$     / ____ \\     $$FG$$\n";
    "$$GREEN$$    /_/    \\_\\    $$FG$$\n";
}

U0 HolyFetchLine(U8 *label,U8 *fmt,...)
{
    "$$LTBLUE$$%-12s$$FG$$",label;
    VaPrint(fmt,argc,argv);
    "\n";
}

U0 HolyFetch()
{
    I64 total_mb=mem_mapped_space>>20;
    I64 free_mb=mem_heap_base>>20;
    I64 used_mb=total_mb-free_mb;
    I64 uptime_s=counts.jiffies/JIFFY_FREQ;
    I64 days=uptime_s/86400;
    I64 hours=(uptime_s%86400)/3600;
    I64 mins=(uptime_s%3600)/60;

    HolyFetchLogo();

    "$$YELLOW$$HolyFetch$$FG$$ v%s\n",HOLYFETCH_VERSION;
    "$$YELLOW$$----------------$$FG$$\n";

    HolyFetchLine("OS","TempleOS");
    HolyFetchLine("Kernel","TempleOS Kernel");
    HolyFetchLine("CPU","%s",blkdev.cpu_model_name);
    HolyFetchLine("Memory","%d MiB / %d MiB",used_mb,total_mb);
    HolyFetchLine("Uptime","%dd %dh %dm",days,hours,mins);
    HolyFetchLine("Resolution","%dx%d",GR_WIDTH,GR_HEIGHT);
}

HolyFetch;
