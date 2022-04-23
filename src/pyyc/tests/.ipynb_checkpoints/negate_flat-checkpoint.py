tmp1 = input()
tmp0 = tmp1
tmp2 = tmp0
tmp7 = tmp2 & 3
tmp6= equal(tmp7, 0)
tmp9 = tmp2 & 3
tmp8= equal(tmp9, 1)
tmp5 = tmp6 or tmp8
tmp4 = tmp5
if0 = tmp4
tmp12 = tmp2 >> 2
tmp13 = tmp12
tmp11 = -tmp13 << 2
tmp11 = tmp11 | 0
tmp10 = tmp11
else0
tmp14 = error_pyobj(1)
tmp10 = tmp14
endif0
tmp3 = tmp10
tmp1 = tmp3
tmp4 = tmp0
tmp9 = tmp4 & 3
tmp8= equal(tmp9, 0)
tmp11 = tmp4 & 3
tmp10= equal(tmp11, 1)
tmp7 = tmp8 or tmp10
tmp6 = tmp7
if1 = tmp6
tmp14 = tmp4 >> 2
tmp15 = tmp14
tmp13 = -tmp15 << 2
tmp13 = tmp13 | 0
tmp12 = tmp13
else1
tmp16 = error_pyobj(1)
tmp12 = tmp16
endif1
tmp5 = tmp12
tmp3 = tmp5
tmp20 = tmp0
tmp25 = tmp20 & 3
tmp24= equal(tmp25, 0)
tmp27 = tmp20 & 3
tmp26= equal(tmp27, 1)
tmp23 = tmp24 or tmp26
tmp22 = tmp23
if2 = tmp22
tmp30 = tmp20 >> 2
tmp31 = tmp30
tmp29 = -tmp31 << 2
tmp29 = tmp29 | 0
tmp28 = tmp29
else2
tmp32 = error_pyobj(1)
tmp28 = tmp32
endif2
tmp21 = tmp28
tmp19 = tmp21
tmp34 = tmp0
tmp40 = tmp34 & 3
tmp39= equal(tmp40, 0)
tmp42 = tmp34 & 3
tmp41= equal(tmp42, 1)
tmp38 = tmp39 or tmp41
tmp45 = tmp19 & 3
tmp44= equal(tmp45, 0)
tmp47 = tmp19 & 3
tmp46= equal(tmp47, 1)
tmp43 = tmp44 or tmp46
tmp37 = tmp38 and tmp43
tmp36 = tmp37
if3 = tmp36
tmp50 = tmp34 >> 2
tmp51 = tmp19 >> 2
tmp52 = tmp50 + tmp51
tmp49 = tmp52 << 2
tmp49 = tmp49 | 0
tmp48 = tmp49
else3
tmp56 = tmp34 & 3
tmp55= equal(tmp56, 3)
tmp58 = tmp19 & 3
tmp57= equal(tmp58, 3)
tmp54 = tmp55 and tmp57
tmp53 = tmp54
if4 = tmp53
tmp63 = ~3
tmp62 = tmp34 & tmp63
tmp65 = ~3
tmp64 = tmp19 & tmp65
tmp61 = add(tmp62, tmp64)
tmp60 = tmp61 << 2
tmp60 = tmp60 | 3
tmp59 = tmp60
else4
tmp66 = error_pyobj(1)
tmp59 = tmp66
endif4
tmp48 = tmp59
endif3
tmp35 = tmp48
tmp33 = tmp35
tmp18 = tmp33
tmp72 = tmp18 & 3
tmp71= equal(tmp72, 0)
tmp74 = tmp18 & 3
tmp73= equal(tmp74, 1)
tmp70 = tmp71 or tmp73
tmp77 = tmp3 & 3
tmp76= equal(tmp77, 0)
tmp79 = tmp3 & 3
tmp78= equal(tmp79, 1)
tmp75 = tmp76 or tmp78
tmp69 = tmp70 and tmp75
tmp68 = tmp69
if5 = tmp68
tmp82 = tmp18 >> 2
tmp83 = tmp3 >> 2
tmp84 = tmp82 + tmp83
tmp81 = tmp84 << 2
tmp81 = tmp81 | 0
tmp80 = tmp81
else5
tmp88 = tmp18 & 3
tmp87= equal(tmp88, 3)
tmp90 = tmp3 & 3
tmp89= equal(tmp90, 3)
tmp86 = tmp87 and tmp89
tmp85 = tmp86
if6 = tmp85
tmp95 = ~3
tmp94 = tmp18 & tmp95
tmp97 = ~3
tmp96 = tmp3 & tmp97
tmp93 = add(tmp94, tmp96)
tmp92 = tmp93 << 2
tmp92 = tmp92 | 3
tmp91 = tmp92
else6
tmp98 = error_pyobj(1)
tmp91 = tmp98
endif6
tmp80 = tmp91
endif5
tmp67 = tmp80
tmp17 = tmp67
tmp2 = tmp17
tmp5 = tmp0
tmp10 = tmp5 & 3
tmp9= equal(tmp10, 0)
tmp12 = tmp5 & 3
tmp11= equal(tmp12, 1)
tmp8 = tmp9 or tmp11
tmp7 = tmp8
if7 = tmp7
tmp15 = tmp5 >> 2
tmp16 = tmp15
tmp14 = -tmp16 << 2
tmp14 = tmp14 | 0
tmp13 = tmp14
else7
tmp17 = error_pyobj(1)
tmp13 = tmp17
endif7
tmp6 = tmp13
tmp4 = tmp6
tmp20 = tmp0
tmp25 = tmp20 & 3
tmp24= equal(tmp25, 0)
tmp27 = tmp20 & 3
tmp26= equal(tmp27, 1)
tmp23 = tmp24 or tmp26
tmp22 = tmp23
if8 = tmp22
tmp30 = tmp20 >> 2
tmp31 = tmp30
tmp29 = ~tmp31 << 2
tmp29 = tmp29 | 0
tmp28 = tmp29
else8
tmp35 = ~3
tmp34 = tmp20 & tmp35
tmp33 = is_true(tmp34)
tmp36 = tmp33
tmp32 = ~tmp36 << 2
tmp32 = tmp32 | 0
tmp28 = tmp32
endif8
tmp21 = tmp28
tmp19 = tmp21
tmp42 = tmp19 & 3
tmp41= equal(tmp42, 0)
tmp44 = tmp19 & 3
tmp43= equal(tmp44, 1)
tmp40 = tmp41 or tmp43
tmp47 = tmp4 & 3
tmp46= equal(tmp47, 0)
tmp49 = tmp4 & 3
tmp48= equal(tmp49, 1)
tmp45 = tmp46 or tmp48
tmp39 = tmp40 and tmp45
tmp38 = tmp39
if9 = tmp38
tmp52 = tmp19 >> 2
tmp53 = tmp4 >> 2
tmp54 = tmp52 + tmp53
tmp51 = tmp54 << 2
tmp51 = tmp51 | 0
tmp50 = tmp51
else9
tmp58 = tmp19 & 3
tmp57= equal(tmp58, 3)
tmp60 = tmp4 & 3
tmp59= equal(tmp60, 3)
tmp56 = tmp57 and tmp59
tmp55 = tmp56
if10 = tmp55
tmp65 = ~3
tmp64 = tmp19 & tmp65
tmp67 = ~3
tmp66 = tmp4 & tmp67
tmp63 = add(tmp64, tmp66)
tmp62 = tmp63 << 2
tmp62 = tmp62 | 3
tmp61 = tmp62
else10
tmp68 = error_pyobj(1)
tmp61 = tmp68
endif10
tmp50 = tmp61
endif9
tmp37 = tmp50
tmp18 = tmp37
tmp3 = tmp18
tmp4 = tmp2
tmp6 = tmp1
tmp12 = tmp6 & 3
tmp11= equal(tmp12, 0)
tmp14 = tmp6 & 3
tmp13= equal(tmp14, 1)
tmp10 = tmp11 or tmp13
tmp17 = tmp4 & 3
tmp16= equal(tmp17, 0)
tmp19 = tmp4 & 3
tmp18= equal(tmp19, 1)
tmp15 = tmp16 or tmp18
tmp9 = tmp10 and tmp15
tmp8 = tmp9
if11 = tmp8
tmp24 = tmp6 >> 2
tmp23= equal(tmp24, 0)
tmp26 = tmp4 >> 2
tmp25= equal(tmp26, 0)
tmp22 = tmp23 or tmp25
tmp21 = tmp22
if12 = tmp21
tmp28 = 0 << 2
tmp28 = tmp28 | 0
tmp27 = tmp28
else12
tmp27 = tmp29
endif12
tmp20 = tmp27
else11
tmp34 = tmp6 & 3
tmp33= equal(tmp34, 0)
tmp36 = tmp6 & 3
tmp35= equal(tmp36, 3)
tmp32 = tmp33 or tmp35
tmp39 = tmp4 & 3
tmp38= equal(tmp39, 0)
tmp41 = tmp4 & 3
tmp40= equal(tmp41, 3)
tmp37 = tmp38 or tmp40
tmp31 = tmp32 and tmp37
tmp30 = tmp31
if13 = tmp30
tmp46 = tmp6 >> 2
tmp45= equal(tmp46, 0)
tmp48 = tmp4 >> 2
tmp47= equal(tmp48, 0)
tmp44 = tmp45 or tmp47
tmp43 = tmp44
if14 = tmp43
tmp50 = 0 << 2
tmp50 = tmp50 | 0
tmp49 = tmp50
else14
tmp49 = tmp29
endif14
tmp42 = tmp49
else13
tmp55 = tmp6 & 3
tmp54= equal(tmp55, 1)
tmp57 = tmp6 & 3
tmp56= equal(tmp57, 3)
tmp53 = tmp54 or tmp56
tmp60 = tmp4 & 3
tmp59= equal(tmp60, 1)
tmp62 = tmp4 & 3
tmp61= equal(tmp62, 3)
tmp58 = tmp59 or tmp61
tmp52 = tmp53 and tmp58
tmp51 = tmp52
if15 = tmp51
tmp67 = tmp6 >> 2
tmp66= equal(tmp67, 0)
tmp69 = tmp4 >> 2
tmp68= equal(tmp69, 0)
tmp65 = tmp66 or tmp68
tmp64 = tmp65
if16 = tmp64
tmp71 = 0 << 2
tmp71 = tmp71 | 0
tmp70 = tmp71
else16
tmp70 = tmp29
endif16
tmp63 = tmp70
else15
tmp72 = error_pyobj(1)
tmp63 = tmp72
endif15
tmp42 = tmp63
endif13
tmp20 = tmp42
endif11
tmp7 = tmp20
tmp5 = tmp7
print tmp5
