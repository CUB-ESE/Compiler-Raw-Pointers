tmp0 = 1
tmp1 = 2
tmp3 = tmp4
if0 = tmp3
tmp6 = tmp0
tmp8 = tmp0
tmp14 = tmp8 & 3
tmp13= equal_pyobj(tmp14, 1)
tmp16 = tmp8 & 3
tmp15= equal_pyobj(tmp16, 0)
tmp12 = tmp13 or tmp15
tmp19 = tmp6 & 3
tmp18= equal_pyobj(tmp19, 1)
tmp21 = tmp6 & 3
tmp20= equal_pyobj(tmp21, 0)
tmp17 = tmp18 or tmp20
tmp11 = tmp12 and tmp17
tmp10 = tmp11
if1 = tmp10
tmp24 = tmp8 >> 2
tmp25 = tmp6 >> 2
tmp26 = tmp24 + tmp25
tmp23 = tmp26 << 2
tmp23 = tmp23 | 1
tmp22 = tmp23
else1
tmp30 = tmp8 & 3
tmp29= equal_pyobj(tmp30, 3)
tmp32 = tmp6 & 3
tmp31= equal_pyobj(tmp32, 3)
tmp28 = tmp29 and tmp31
tmp27 = tmp28
if2 = tmp27
tmp37 = ~3
tmp36 = tmp36 & tmp37
tmp39 = ~3
tmp38 = tmp38 & tmp39
tmp35 = add(tmp36, tmp38)
tmp34 = tmp35 << 2
tmp34 = tmp34 | 3
tmp33 = tmp34
else2
tmp40 = error_pyobj(1)
tmp33 = tmp40
endif2
tmp22 = tmp33
endif1
tmp9 = tmp22
tmp7 = tmp9
tmp5 = tmp7
else0
tmp41 = tmp1
tmp43 = tmp1
tmp49 = tmp43 & 3
tmp48= equal_pyobj(tmp49, 1)
tmp51 = tmp43 & 3
tmp50= equal_pyobj(tmp51, 0)
tmp47 = tmp48 or tmp50
tmp54 = tmp41 & 3
tmp53= equal_pyobj(tmp54, 1)
tmp56 = tmp41 & 3
tmp55= equal_pyobj(tmp56, 0)
tmp52 = tmp53 or tmp55
tmp46 = tmp47 and tmp52
tmp45 = tmp46
if3 = tmp45
tmp59 = tmp43 >> 2
tmp60 = tmp41 >> 2
tmp61 = tmp59 + tmp60
tmp58 = tmp61 << 2
tmp58 = tmp58 | 1
tmp57 = tmp58
else3
tmp65 = tmp43 & 3
tmp64= equal_pyobj(tmp65, 3)
tmp67 = tmp41 & 3
tmp66= equal_pyobj(tmp67, 3)
tmp63 = tmp64 and tmp66
tmp62 = tmp63
if4 = tmp62
tmp72 = ~3
tmp71 = tmp71 & tmp72
tmp74 = ~3
tmp73 = tmp73 & tmp74
tmp70 = add(tmp71, tmp73)
tmp69 = tmp70 << 2
tmp69 = tmp69 | 3
tmp68 = tmp69
else4
tmp75 = error_pyobj(1)
tmp68 = tmp75
endif4
tmp57 = tmp68
endif3
tmp44 = tmp57
tmp42 = tmp44
tmp5 = tmp42
endif0
tmp2 = tmp5
print tmp2
