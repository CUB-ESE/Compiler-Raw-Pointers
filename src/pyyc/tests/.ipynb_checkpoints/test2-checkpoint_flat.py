tmp1= make_list(1)
set_subscript(tmp1, 0, 1)
tmp0 = tmp1
tmp2= make_list(1)
set_subscript(tmp2, 0, 2)
tmp1 = tmp2
set_subscritpion(tmp1, 0, 3)
tmp3= get_subscript(tmp1, 0)
print tmp3
tmp4 = tmp1
tmp6 = tmp0
tmp12 = tmp6 & 3
tmp11= equal_pyobj(tmp12, 1)
tmp14 = tmp6 & 3
tmp13= equal_pyobj(tmp14, 0)
tmp10 = tmp11 or tmp13
tmp17 = tmp4 & 3
tmp16= equal_pyobj(tmp17, 1)
tmp19 = tmp4 & 3
tmp18= equal_pyobj(tmp19, 0)
tmp15 = tmp16 or tmp18
tmp9 = tmp10 and tmp15
tmp8 = tmp9
if0 = tmp8
tmp22 = tmp6 >> 2
tmp23 = tmp4 >> 2
tmp24 = tmp22 + tmp23
tmp21 = tmp24 << 2
tmp21 = tmp21 | 1
tmp20 = tmp21
else0
tmp28 = tmp6 & 3
tmp27= equal_pyobj(tmp28, 3)
tmp30 = tmp4 & 3
tmp29= equal_pyobj(tmp30, 3)
tmp26 = tmp27 and tmp29
tmp25 = tmp26
if1 = tmp25
tmp35 = ~3
tmp34 = tmp34 & tmp35
tmp37 = ~3
tmp36 = tmp36 & tmp37
tmp33 = add(tmp34, tmp36)
tmp32 = tmp33 << 2
tmp32 = tmp32 | 3
tmp31 = tmp32
else1
tmp38 = error_pyobj(1)
tmp31 = tmp38
endif1
tmp20 = tmp31
endif0
tmp7 = tmp20
tmp5 = tmp7
print tmp5
