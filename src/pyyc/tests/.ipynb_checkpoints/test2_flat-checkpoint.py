tmp0 = LIST
tmp1 = LIST
tmp2 = LIST
tmp3 = tmp2
tmp6 = tmp1
tmp8 = tmp0
tmp14 = tmp8 & 3
tmp13 = tmp14 == 1
tmp16 = tmp8 & 3
tmp15 = tmp16 == 0
tmp12 = tmp13 or tmp15
tmp19 = tmp6 & 3
tmp18 = tmp19 == 1
tmp21 = tmp6 & 3
tmp20 = tmp21 == 0
tmp17 = tmp18 or tmp20
tmp11 = tmp12 and tmp17
tmp10 = tmp11
if tmp10
tmp24 = tmp8 >> 2
tmp25 = tmp6 >> 2
tmp26 = tmp24 + tmp25
tmp23 = tmp26 << 2
tmp23 = tmp23 | 1
tmp22 = tmp23
else
tmp30 = tmp8 & 3
tmp29 = tmp30 == 3
tmp32 = tmp6 & 3
tmp31 = tmp32 == 3
tmp28 = tmp29 and tmp31
tmp27 = tmp28
if tmp27
tmp37 = ~3
tmp36 = tmp36 & tmp37
tmp39 = ~3
tmp38 = tmp38 & tmp39
tmp35 = add(tmp36, tmp38)
tmp34 = tmp35 << 2
tmp34 = tmp34 | 3
tmp33 = tmp34
else
tmp40 = error_pyobj(1)
tmp33 = tmp40
endif
tmp22 = tmp33
endif
tmp9 = tmp22
tmp7 = tmp9
tmp5 = tmp7
tmp46 = tmp5 & 3
tmp45 = tmp46 == 1
tmp48 = tmp5 & 3
tmp47 = tmp48 == 0
tmp44 = tmp45 or tmp47
tmp51 = tmp3 & 3
tmp50 = tmp51 == 1
tmp53 = tmp3 & 3
tmp52 = tmp53 == 0
tmp49 = tmp50 or tmp52
tmp43 = tmp44 and tmp49
tmp42 = tmp43
if tmp42
tmp56 = tmp5 >> 2
tmp57 = tmp3 >> 2
tmp58 = tmp56 + tmp57
tmp55 = tmp58 << 2
tmp55 = tmp55 | 1
tmp54 = tmp55
else
tmp62 = tmp5 & 3
tmp61 = tmp62 == 3
tmp64 = tmp3 & 3
tmp63 = tmp64 == 3
tmp60 = tmp61 and tmp63
tmp59 = tmp60
if tmp59
tmp69 = ~3
tmp68 = tmp68 & tmp69
tmp71 = ~3
tmp70 = tmp70 & tmp71
tmp67 = add(tmp68, tmp70)
tmp66 = tmp67 << 2
tmp66 = tmp66 | 3
tmp65 = tmp66
else
tmp72 = error_pyobj(1)
tmp65 = tmp72
endif
tmp54 = tmp65
endif
tmp41 = tmp54
tmp4 = tmp41
print tmp4
