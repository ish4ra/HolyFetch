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

U0 HolyFetchCPUBrand(U8 *brand)
{
  CRAXRBCRCXRDX r;
  I64 leaf;
  U8 *dst=brand;

  CPUId(0x80000000,&r);
  if (r.rax<0x80000004) {
    StrCpy(brand,"Unknown x86-64 CPU");
    return;
  }

  for (leaf=0x80000002;leaf<=0x80000004;leaf++) {
    CPUId(leaf,&r);
    MemCpy(dst,&r.rax,4); dst+=4;
    MemCpy(dst,&r.rbx,4); dst+=4;
    MemCpy(dst,&r.rcx,4); dst+=4;
    MemCpy(dst,&r.rdx,4); dst+=4;
  }
  *dst=0;

  while (*brand==' ')
    StrCpy(brand,brand+1);
}

U0 HolyFetch()
{
  U8 cpu_brand[49];
  I64 uptime_s=cnts.jiffies/JIFFY_FREQ;
  I64 days=uptime_s/86400;
  I64 hours=(uptime_s%86400)/3600;
  I64 mins=(uptime_s%3600)/60;
  I64 memory_mb=MemBIOSTotal()>>20;

  HolyFetchCPUBrand(cpu_brand);
  HolyFetchLogo();

  "$$YELLOW$$HolyFetch$$FG$$ v%s\n",HOLYFETCH_VERSION;
  "$$YELLOW$$----------------$$FG$$\n";
  "$$LTBLUE$$OS            $$FG$$TempleOS\n";
  "$$LTBLUE$$Architecture  $$FG$$x86-64\n";
  "$$LTBLUE$$CPU           $$FG$$%s\n",cpu_brand;
  "$$LTBLUE$$CPU cores     $$FG$$%d logical\n",mp_cnt;
  "$$LTBLUE$$Memory        $$FG$$%d MiB physical\n",memory_mb;
  "$$LTBLUE$$Uptime        $$FG$$%dd %dh %dm\n",days,hours,mins;
  "$$LTBLUE$$Resolution    $$FG$$%dx%d\n",GR_WIDTH,GR_HEIGHT;
}

HolyFetch;
