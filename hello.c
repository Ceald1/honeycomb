
#include "bpf_helpers.h"

#include "ebpf_nethooks.h"

SEC("xdp")
int func() {
  bpf_printk("hello world!\n");
  return 0;
}

char LICENSE[] SEC("license") = "GPL";
