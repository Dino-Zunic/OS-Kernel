.global _ZN12KernelThread13contextSwitchEPNS_7ContextES1_
.type _ZN12KernelThread13contextSwitchEPNS_7ContextES1_, @function
_ZN12KernelThread13contextSwitchEPNS_7ContextES1_:
    # a0 = &old->context
    # a1 = &running->context
    sd ra, 0 * 8(a0)
    sd sp, 1 * 8(a0)

    ld ra, 0 * 8(a1)
    ld sp, 1 * 8(a1)

    ret
