// HolyFetch
// A lightweight TempleOS system information tool written entirely in HolyC.

#define HOLYFETCH_VERSION "0.1.0"

U0 HolyFetchLogo()
{
  "$$GREEN$$      _____     $$FG$$\n";
  "$$GREEN$$     /     \\    $$FG$$\n";
  "$$GREEN$$    /  /\\  \\   $$FG$$\n";
  "$$GREEN$$   /  /  \\  \\  $$FG$$\n";
  "$$GREEN$$  /__/    \\__\\ $$FG$$\n";
}

U0 HolyFetch()
{
  I64 uptime_s=cnts.jiffies/JIFFY_FREQ;
  I64 days=uptime_s/86400;
  I64 hours=(uptime_s%86400)/3600;
  I64 mins=(uptime_s%3600)/60;
  I64 memory_mb=mem_physical_space>>20;

  HolyFetchLogo();

  "$$YELLOW$$HolyFetch$$FG$$ v%s\n",HOLYFETCH_VERSION;
  "$$YELLOW$$----------------$$FG$$\n";
  "$$LTBLUE$$OS          $$FG$$TempleOS\n";
  "$$LTBLUE$$Architecture$$FG$$x86-64\n";
  "$$LTBLUE$$CPU         $$FG$$%d logical core(s)\n",mp_cnt;
  "$$LTBLUE$$Memory      $$FG$$%d MiB physical\n",memory_mb;
  "$$LTBLUE$$Uptime      $$FG$$%dd %dh %dm\n",days,hours,mins;
  "$$LTBLUE$$Resolution  $$FG$$%dx%d\n",GR_WIDTH,GR_HEIGHT;
}

HolyFetch;
