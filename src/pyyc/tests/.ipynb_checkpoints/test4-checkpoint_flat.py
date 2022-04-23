tmp0 = 1
tmp1 = 2
tmp2 = tmp1
tmp4 = tmp0
tmp10 = tmp4 & 3
tmp9= equal_pyobj(tmp10, 1)
tmp12 = tmp4 & 3
tmp11= equal_pyobj(tmp12, 0)
tmp8 = tmp9 or tmp11
tmp15 = tmp2 & 3
tmp14= equal_pyobj(tmp15, 1)
tmp17 = tmp2 & 3
tmp16= equal_pyobj(tmp17, 0)
tmp13 = tmp14 or tmp16
tmp7 = tmp8 and tmp13
tmp6 = tmp7
if0 = tmp6
tmp20 = tmp4 >> 2
tmp21 = tmp2 >> 2
tmp22 = tmp20 + tmp21
tmp19 = tmp22 << 2
tmp19 = tmp19 | 1
tmp18 = tmp19
else0
tmp26 = tmp4 & 3
tmp25= equal_pyobj(tmp26, 3)
tmp28 = tmp2 & 3
tmp27= equal_pyobj(tmp28, 3)
tmp24 = tmp25 and tmp27
tmp23 = tmp24
if1 = tmp23
tmp33 = ~3
tmp32 = tmp32 & tmp33
tmp35 = ~3
tmp34 = tmp34 & tmp35
tmp31 = add(tmp32, tmp34)
tmp30 = tmp31 << 2
tmp30 = tmp30 | 3
tmp29 = tmp30
else1
tmp36 = error_pyobj(1)
tmp29 = tmp36
endif1
tmp18 = tmp29
endif0
tmp5 = tmp18
tmp3 = tmp5
print tmp3
