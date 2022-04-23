tmp0 = 2
tmp2 = 1
tmp8 = tmp2 & 3
tmp7= equal_pyobj(tmp8, 1)
tmp10 = tmp2 & 3
tmp9= equal_pyobj(tmp10, 0)
tmp6 = tmp7 or tmp9
tmp13 = tmp0 & 3
tmp12= equal_pyobj(tmp13, 1)
tmp15 = tmp0 & 3
tmp14= equal_pyobj(tmp15, 0)
tmp11 = tmp12 or tmp14
tmp5 = tmp6 and tmp11
tmp4 = tmp5
if0 = tmp4
tmp20 = tmp2 >> 2
tmp19= equal_pyobj(tmp20, 0)
tmp22 = tmp0 >> 2
tmp21= equal_pyobj(tmp22, 0)
tmp18 = tmp19 or tmp21
tmp17 = tmp18
if1 = tmp17
tmp24 = 0 << 2
tmp24 = tmp24 | 1
tmp23 = tmp24
else1
tmp23 = -1
endif1
tmp16 = tmp23
else0
tmp29 = tmp2 & 3
tmp28= equal_pyobj(tmp29, 1)
tmp31 = tmp2 & 3
tmp30= equal_pyobj(tmp31, 3)
tmp27 = tmp28 or tmp30
tmp34 = tmp0 & 3
tmp33= equal_pyobj(tmp34, 1)
tmp36 = tmp0 & 3
tmp35= equal_pyobj(tmp36, 3)
tmp32 = tmp33 or tmp35
tmp26 = tmp27 and tmp32
tmp25 = tmp26
if2 = tmp25
tmp41 = tmp2 >> 2
tmp40= equal_pyobj(tmp41, 0)
tmp43 = tmp0 >> 2
tmp42= equal_pyobj(tmp43, 0)
tmp39 = tmp40 or tmp42
tmp38 = tmp39
if3 = tmp38
tmp45 = 0 << 2
tmp45 = tmp45 | 1
tmp44 = tmp45
else3
tmp44 = -1
endif3
tmp37 = tmp44
else2
tmp50 = tmp2 & 3
tmp49= equal_pyobj(tmp50, 0)
tmp52 = tmp2 & 3
tmp51= equal_pyobj(tmp52, 3)
tmp48 = tmp49 or tmp51
tmp55 = tmp0 & 3
tmp54= equal_pyobj(tmp55, 0)
tmp57 = tmp0 & 3
tmp56= equal_pyobj(tmp57, 3)
tmp53 = tmp54 or tmp56
tmp47 = tmp48 and tmp53
tmp46 = tmp47
if4 = tmp46
tmp62 = tmp2 >> 2
tmp61= equal_pyobj(tmp62, 0)
tmp64 = tmp0 >> 2
tmp63= equal_pyobj(tmp64, 0)
tmp60 = tmp61 or tmp63
tmp59 = tmp60
if5 = tmp59
tmp66 = 0 << 2
tmp66 = tmp66 | 1
tmp65 = tmp66
else5
tmp65 = -1
endif5
tmp58 = tmp65
else4
tmp67 = error_pyobj(1)
tmp58 = tmp67
endif4
tmp37 = tmp58
endif2
tmp16 = tmp37
endif0
tmp3 = tmp16
tmp1 = tmp3
