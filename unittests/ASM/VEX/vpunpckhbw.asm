%ifdef CONFIG
{
  "HostFeatures": ["AVX"],
  "RegData": {
    "XMM2": ["0x7555765677577858", "0x7151725273537454", "0x0000000000000000", "0x0000000000000000"],
    "XMM3": ["0x7555765677577858", "0x7151725273537454", "0x0000000000000000", "0x0000000000000000"],
    "XMM4": ["0x7555765677577858", "0x7151725273537454", "0x1199119900880088", "0x33BB33BB22AA22AA"],
    "XMM5": ["0x7555765677577858", "0x7151725273537454", "0x1199119900880088", "0x33BB33BB22AA22AA"]
  },
  "MemoryRegions": {
    "0x100000000": "4096"
  }
}
%endif

lea rdx, [rel .data]

vmovapd ymm0, [rdx]
vmovapd ymm1, [rdx + 32]

vpunpckhbw xmm2, xmm0, xmm1
vpunpckhbw xmm3, xmm0, [rdx + 32]

vpunpckhbw ymm4, ymm0, ymm1
vpunpckhbw ymm5, ymm0, [rdx + 32]

hlt

align 32
.data:
dq 0x4142434445464748
dq 0x5152535455565758
dq 0xFFFFEEEEDDDDCCCC
dq 0xBBBBAAAA99998888

dq 0x6162636465666768
dq 0x7172737475767778
dq 0x7777666655554444
dq 0x3333222211110000