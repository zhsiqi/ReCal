* install krippalpha package in advance

* calculate reliability for all 4 coders
krippalpha *va1, method(nominal)
krippalpha *va2, method(nominal)
krippalpha *va3, method(nominal)
krippalpha *va4, method(nominal)
krippalpha *va5, method(nominal)
krippalpha *va6, method(nominal)
krippalpha *va7, method(nominal)
krippalpha *va8, method(nominal)
krippalpha *va9, method(nominal)
krippalpha *va10, method(nominal)
krippalpha *va11, method(nominal)
krippalpha *va12, method(nominal)
krippalpha *va13, method(nominal)

sysuse 20210503reliability
foreach x in va1 va2 va3 va4 va5 va6 va7 va8 va9 va10 va11 va12 va13 {
    krippalpha *`x', method(nominal)
    gen alpha_`x' =`r(k_alpha)'
}
qui egen alphamean=rowmean(alpha*) in 1
qui sum alphamean
scalar overallalpha=`=r(mean)'
drop alpha_* alphamean
display `=overallalpha'

* calculate reliability for coder 1, coder 3, and coder 4
krippalpha c1_va1 c3_va1 c4_va1 , method(nominal)
krippalpha c1_va2 c3_va2 c4_va2 , method(nominal)
krippalpha c1_va3 c3_va3 c4_va3 , method(nominal)
krippalpha c1_va4 c3_va4 c4_va4 , method(nominal)
krippalpha c1_va5 c3_va5 c4_va5 , method(nominal)
krippalpha c1_va6 c3_va6 c4_va6 , method(nominal)
krippalpha c1_va7 c3_va7 c4_va7 , method(nominal)
krippalpha c1_va8 c3_va8 c4_va8 , method(nominal)
krippalpha c1_va9 c3_va9 c4_va9 , method(nominal)
krippalpha c1_va10 c3_va10 c4_va10 , method(nominal)
krippalpha c1_va11 c3_va11 c4_va11 , method(nominal)
krippalpha c1_va12 c3_va12 c4_va12 , method(nominal)
krippalpha c1_va13 c3_va13 c4_va13 , method(nominal)
krippalpha c1_va14 c3_va14 c4_va14 , method(nominal)
krippalpha c1_va15 c3_va15 c4_va15 , method(nominal)
krippalpha c1_va16 c3_va16 c4_va16 , method(nominal)
krippalpha c1_va18 c3_va18 c4_va18 , method(nominal)
krippalpha c1_va19 c3_va19 c4_va19 , method(nominal)
krippalpha c1_va20 c3_va20 c4_va20 , method(nominal)
krippalpha c1_va21 c3_va21 c4_va21 , method(nominal)
krippalpha c1_va22 c3_va22 c4_va22 , method(nominal)

sysuse 20210503reliability
foreach x in va1 va2 va3 va4 va5 va6 va7 va8 va9 va10 va11 va12 va13 {
    krippalpha *`x', method(nominal)
    gen alpha_`x' =`r(k_alpha)'
}
qui egen alphamean=rowmean(alpha*) in 1
qui sum alphamean
scalar overallalpha=`=r(mean)'
drop alpha_* alphamean
display `=overallalpha'

* calculate reliability for coder 1 and coder 4
krippalpha c1_va0 c4_va0 , method(nominal)
krippalpha c1_va1 c4_va1 , method(nominal)
krippalpha c1_va2 c4_va2 , method(nominal)
krippalpha c1_va3 c4_va3 , method(nominal)
krippalpha c1_va4 c4_va4 , method(nominal)
krippalpha c1_va5 c4_va5 , method(nominal)
krippalpha c1_va6 c4_va6 , method(nominal)
krippalpha c1_va7 c4_va7 , method(nominal)
krippalpha c1_va8 c4_va8 , method(nominal)
krippalpha c1_va9 c4_va9 , method(nominal)
krippalpha c1_va10 c4_va10 , method(nominal)
krippalpha c1_va11 c4_va11 , method(nominal)
krippalpha c1_va12 c4_va12 , method(nominal)
krippalpha c1_va13 c4_va13 , method(nominal)
krippalpha c1_va14 c4_va14 , method(nominal)
krippalpha c1_va15 c4_va15 , method(nominal)
krippalpha c1_va16 c4_va16 , method(nominal)
krippalpha c1_va17 c4_va17 , method(nominal)
krippalpha c1_va18 c4_va18 , method(nominal)
krippalpha c1_va19 c4_va19 , method(nominal)
krippalpha c1_va20 c4_va20 , method(nominal)
krippalpha c1_va21 c4_va21 , method(nominal)
krippalpha c1_va22 c4_va22 , method(nominal)
krippalpha c1_va23 c4_va23 , method(nominal)
krippalpha c1_va24 c4_va24 , method(nominal)
krippalpha c1_va25 c4_va25 , method(nominal)

sysuse 20210503reliability
foreach x in va1 va2 va3 va4 va5 va6 va7 va8 va9 va10 va11 va12 va13 {
    krippalpha *`x', method(nominal)
    gen alpha_`x' =`r(k_alpha)'
}
qui egen alphamean=rowmean(alpha*) in 1
qui sum alphamean
scalar overallalpha=`=r(mean)'
drop alpha_* alphamean
display `=overallalpha'
