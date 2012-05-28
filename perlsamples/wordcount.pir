.loadlib 'perl6_ops'

.HLL "perl6"

.namespace []
.sub "_block1050"   :subid("74_1336124771.95746")
    .param pmc param_1120 :slurpy
.annotate 'file', "wordcount.pl"
.annotate 'line', 0
    .const 'Sub' $P1054 = "75_1336124771.95746" 
    capture_lex $P1054
.annotate 'line', 1
.annotate 'file', 'wordcount.pl'
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1052
    get_hll_global $P100, "!UNIT_START"
    .const 'Sub' $P1054 = "75_1336124771.95746" 
    capture_lex $P1054
    .lex "@_", param_1120
    $P114 = $P100($P1054, param_1120)
    .return ($P114)
    .const 'Sub' $P1124 = "84_1336124771.95746" 
    .return ($P1124)
.end


.HLL "perl6"

.namespace []
.sub "_block1053"   :subid("75_1336124771.95746") :outer("74_1336124771.95746")
    .param pmc param_1119 :optional
    .param int has_param_1119 :opt_flag
.annotate 'file', "wordcount.pl"
.annotate 'line', 1
    .const 'Sub' $P1063 = "76_1336124771.95746" 
    capture_lex $P1063
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1055
    find_lex_skip_current $P101, "$_"
    $P1057 = new ['Perl6Scalar'], $P101
    setprop $P1057, "rw", true
    set $P1056, $P1057
    .lex "$_", $P1056
    find_lex_skip_current $P102, "$/"
    $P1059 = new ['Perl6Scalar'], $P102
    setprop $P1059, "rw", true
    set $P1058, $P1059
    .lex "$/", $P1058
    find_lex_skip_current $P103, "$!"
    $P1061 = new ['Perl6Scalar'], $P103
    setprop $P1061, "rw", true
    set $P1060, $P1061
    .lex "$!", $P1060
    .local pmc code_73
    .const 'Sub' $P1063 = "76_1336124771.95746" 
    capture_lex $P1063
    get_hll_global $P110, "Sub"
    .const 'Sub' $P1117 = "77_1336124771.95746" 
    $P111 = $P1063."!get_closure"($P110, $P1117, 0)
    set code_73, $P111
    set $P1062, code_73
    .lex "&wordcount", $P1062
.annotate 'line', 20
    $P112 = "&CREATE_HASH_FROM_LOW_LEVEL"()
    setprop $P112, "rw", true
    set $P1118, $P112
    .lex "%a", $P1118
.annotate 'line', 1
    if has_param_1119, optparam_92
    new $P113, "Integer"
    assign $P113, 0
    set param_1119, $P113
  optparam_92:
    .lex "$MAIN", param_1119
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    $P0 = get_hll_global "@!recapture"
  recapture_loop:
    unless $P0 goto recapture_loop_end
    $P1 = shift $P0
    fixup_outer_ctx $P1
    goto recapture_loop
  recapture_loop_end:
.annotate 'line', 20
    $P115 = "&wordcount"()
    find_lex $P114, "%a"
    "&infix:<=>"($P114, $P115)
.annotate 'line', 21
    find_lex $P114, "%a"
    $P115 = "&say"($P114)
.annotate 'line', 1
    .return ($P115)
.end


.HLL "perl6"

.namespace []
.sub "" :load :init :subid("post85") :outer("75_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 1
    .const 'Sub' $P1054 = "75_1336124771.95746" 
    .local pmc block
    set block, $P1054
    $P0 = find_name "!UNIT_OUTER"
    unless null $P0 goto have_perl6
    load_language "perl6"
  have_perl6:
    "!UNIT_OUTER"(block)
.end


.HLL "perl6"

.namespace []
.include "except_types.pasm"
.sub "wordcount"   :subid("76_1336124771.95746") :outer("75_1336124771.95746")
    .param pmc param_1076 :call_sig
.annotate 'file', "wordcount.pl"
.annotate 'line', 1
    .const 'Sub' $P1081 = "78_1336124771.95746" 
    capture_lex $P1081
    .const 'Sub' $P1078 = "77_1336124771.95746" 
    capture_lex $P1078
    new $P1065, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1065, control_1064
    push_eh $P1065
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1066
    $P1068 = new ['Perl6Scalar']
    setprop $P1068, "rw", true
    set $P1067, $P1068
    .lex "$_", $P1067
    $P1070 = new ['Perl6Scalar']
    setprop $P1070, "rw", true
    set $P1069, $P1070
    .lex "$/", $P1069
    $P1072 = new ['Perl6Scalar']
    setprop $P1072, "rw", true
    set $P1071, $P1072
    .lex "$!", $P1071
.annotate 'line', 2
    new $P104, "Perl6Scalar"
    setprop $P104, "rw", true
    setprop $P104, "scalar", true
    set $P1073, $P104
    .lex "$filename", $P1073
.annotate 'line', 4
    $P105 = "&CREATE_HASH_FROM_LOW_LEVEL"()
    setprop $P105, "rw", true
    set $P1074, $P105
    .lex "%counter", $P1074
.annotate 'line', 6
    new $P106, "Perl6Scalar"
    setprop $P106, "rw", true
    setprop $P106, "scalar", true
    set $P1075, $P106
    .lex "$fh", $P1075
    .lex "call_sig", param_1076
    find_lex $P107, "call_sig"
    bind_llsig $P107
    x_enter_sublog 
.annotate 'line', 2
    find_lex $P108, "$filename"
    new $P109, "Str"
    assign $P109, "wordcount.txt"
    "&infix:<=>"($P108, $P109)
.annotate 'line', 4
    find_lex $P108, "%counter"
.annotate 'line', 6
    find_lex $P108, "$fh"
    find_lex $P109, "$filename"
    $P110 = "&open"($P109)
    "&infix:<=>"($P108, $P110)
.annotate 'line', 7
    find_lex $P108, "$fh"
    deref_unless_object $P109, $P108
    $P110 = $P109."lines"()
    $P111 = "&flat"($P110)
    .const 'Sub' $P1081 = "78_1336124771.95746" 
    capture_lex $P1081
    get_hll_global $P120, "Block"
    .const 'Sub' $P1116 = "79_1336124771.95746" 
    $P121 = $P1081."!get_closure"($P120, $P1116, 0)
    $P122 = $P111."map"($P121)
    "&eager"($P122)
.annotate 'line', 17
    find_lex $P108, "%counter"
    $P109 = "&return"($P108)
.annotate 'line', 1
    .return ($P109)
  control_1064:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "perl6"

.namespace []
.sub "_block1077"   :subid("77_1336124771.95746") :outer("76_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 6
    $P1079 = allocate_llsig 0
    .local pmc signature_72
    set signature_72, $P1079
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_72
    .return (signature)
.end


.HLL "perl6"

.namespace []
.sub "_block1080"   :subid("78_1336124771.95746") :outer("76_1336124771.95746")
    .param pmc param_1089 :call_sig
.annotate 'file', "wordcount.pl"
.annotate 'line', 7
    .const 'Sub' $P1100 = "81_1336124771.95746" 
    capture_lex $P1100
    .const 'Sub' $P1095 = "80_1336124771.95746" 
    capture_lex $P1095
    .const 'Sub' $P1092 = "79_1336124771.95746" 
    capture_lex $P1092
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1082
    find_lex_skip_current $P112, "$/"
    $P1084 = new ['Perl6Scalar'], $P112
    setprop $P1084, "rw", true
    set $P1083, $P1084
    .lex "$/", $P1083
    find_lex_skip_current $P113, "$!"
    $P1086 = new ['Perl6Scalar'], $P113
    setprop $P1086, "rw", true
    set $P1085, $P1086
    .lex "$!", $P1085
.annotate 'line', 8
    new $P114, "Array"
    setprop $P114, "rw", true
    set $P0, $P114
    get_hll_global $P115, "ContainerDeclarand"
    $P116 = $P115."new"($P0, "@words" :named("name"))
    .local pmc declarand
    set declarand, $P116
    transform_to_p6opaque $P0
    $P1088 = $P0
    set $P1087, $P1088
    .lex "@words", $P1087
    .lex "call_sig", param_1089
    new $P117, "Perl6Scalar"
    set $P1090, $P117
    .lex "$line", $P1090
    find_lex $P118, "call_sig"
    bind_llsig $P118
    x_enter_sublog 
    .const 'Sub' $P1095 = "80_1336124771.95746" 
    capture_lex $P1095
    get_hll_global $P121, "Regex"
    $P122 = $P1095."!get_closure"($P121, 0)
    find_lex $P123, "$line"
    $P124 = "&split"($P122, $P123)
    find_lex $P120, "@words"
    "&infix:<=>"($P120, $P124)
.annotate 'line', 9
    find_lex $P120, "@words"
    $P121 = "&flat"($P120)
    .const 'Sub' $P1100 = "81_1336124771.95746" 
    capture_lex $P1100
    get_hll_global $P127, "Block"
    .const 'Sub' $P1113 = "82_1336124771.95746" 
    $P128 = $P1100."!get_closure"($P127, $P1113, 0)
    $P129 = $P121."map"($P128)
    $P131 = "&eager"($P129)
.annotate 'line', 7
    .return ($P131)
.end


.HLL "perl6"

.namespace []
.sub "" :load :init :subid("post86") :outer("78_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 7
    .const 'Sub' $P1081 = "78_1336124771.95746" 
    .local pmc block
    set block, $P1081
    .const 'Sub' $P1114 = "78_1336124771.95746" 
    .const 'Sub' $P1115 = "79_1336124771.95746" 
    setprop $P1114, "$!lazysig", $P1115
.end


.HLL "perl6"

.namespace []
.sub "_block1091"   :subid("79_1336124771.95746") :outer("78_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 8
    $P1093 = allocate_llsig 1
    .local pmc signature_71
    set signature_71, $P1093
    null $P0
    null $S0
    get_hll_global $P119, "Mu"
    set_llsig_elem signature_71, 0, "$line", 128, $P119, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_71
    .return (signature)
.end


.HLL "perl6"

.namespace []
.sub "_block1094"   :subid("80_1336124771.95746") :method :outer("78_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 8
    .local string rx1096_tgt
    .local int rx1096_pos
    .local int rx1096_off
    .local int rx1096_eos
    .local int rx1096_rep
    .local pmc rx1096_cur
    .local pmc rx1096_debug
    (rx1096_cur, rx1096_pos, rx1096_tgt, $I10) = self."!cursor_start"()
    getattribute rx1096_debug, rx1096_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1096_cur
    .local pmc match
    .lex "$/", match
    length rx1096_eos, rx1096_tgt
    gt rx1096_pos, rx1096_eos, rx1096_done
    set rx1096_off, 0
    lt rx1096_pos, 2, rx1096_start
    sub rx1096_off, rx1096_pos, 1
    substr rx1096_tgt, rx1096_tgt, rx1096_off
  rx1096_start:
    eq $I10, 1, rx1096_restart
    if_null rx1096_debug, debug_87
    rx1096_cur."!cursor_debug"("START", "")
  debug_87:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1097_done
    goto rxscan1097_scan
  rxscan1097_loop:
    ($P10) = rx1096_cur."from"()
    inc $P10
    set rx1096_pos, $P10
    ge rx1096_pos, rx1096_eos, rxscan1097_done
  rxscan1097_scan:
    set_addr $I10, rxscan1097_loop
    rx1096_cur."!mark_push"(0, rx1096_pos, $I10)
  rxscan1097_done:
  # rx rxquantg1098 ** 1..*
  rxquantg1098_loop:
  # rx charclass s
    ge rx1096_pos, rx1096_eos, rx1096_fail
    sub $I10, rx1096_pos, rx1096_off
    is_cclass $I11, 32, rx1096_tgt, $I10
    unless $I11, rx1096_fail
    inc rx1096_pos
    set_addr $I10, rxquantg1098_done
    rx1096_cur."!mark_push"(rx1096_rep, rx1096_pos, $I10)
    goto rxquantg1098_loop
  rxquantg1098_done:
  # rx pass
    rx1096_cur."!cursor_pass"(rx1096_pos, "")
    if_null rx1096_debug, debug_88
    rx1096_cur."!cursor_debug"("PASS", "", " at pos=", rx1096_pos)
  debug_88:
    rx1096_cur."!cursor_backtrack"()
    .return (rx1096_cur)
  rx1096_restart:
    if_null rx1096_debug, debug_89
    rx1096_cur."!cursor_debug"("NEXT", "")
  debug_89:
  rx1096_fail:
    (rx1096_rep, rx1096_pos, $I10, $P10) = rx1096_cur."!mark_fail"(0)
    lt rx1096_pos, -1, rx1096_done
    eq rx1096_pos, -1, rx1096_fail
    jump $I10
  rx1096_done:
    rx1096_cur."!cursor_fail"()
    if_null rx1096_debug, debug_90
    rx1096_cur."!cursor_debug"("FAIL", "")
  debug_90:
    .return (rx1096_cur)
    .return ()
.end


.HLL "perl6"

.namespace []
.sub "_block1099"   :subid("81_1336124771.95746") :outer("78_1336124771.95746")
    .param pmc param_1106 :call_sig
.annotate 'file', "wordcount.pl"
.annotate 'line', 9
    .const 'Sub' $P1109 = "82_1336124771.95746" 
    capture_lex $P1109
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1101
    find_lex_skip_current $P122, "$/"
    $P1103 = new ['Perl6Scalar'], $P122
    setprop $P1103, "rw", true
    set $P1102, $P1103
    .lex "$/", $P1102
    find_lex_skip_current $P123, "$!"
    $P1105 = new ['Perl6Scalar'], $P123
    setprop $P1105, "rw", true
    set $P1104, $P1105
    .lex "$!", $P1104
    .lex "call_sig", param_1106
    new $P124, "Perl6Scalar"
    set $P1107, $P124
    .lex "$word", $P1107
    find_lex $P125, "call_sig"
    bind_llsig $P125
    x_enter_sublog 
.annotate 'line', 10
    find_lex $P127, "%counter"
    find_lex $P128, "$word"
    $P129 = "!postcircumfix:<{ }>"($P127, $P128)
    $P130 = "&postfix:<++>"($P129)
.annotate 'line', 9
    .return ($P130)
.end


.HLL "perl6"

.namespace []
.sub "" :load :init :subid("post91") :outer("81_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 9
    .const 'Sub' $P1100 = "81_1336124771.95746" 
    .local pmc block
    set block, $P1100
    .const 'Sub' $P1111 = "81_1336124771.95746" 
    .const 'Sub' $P1112 = "82_1336124771.95746" 
    setprop $P1111, "$!lazysig", $P1112
.end


.HLL "perl6"

.namespace []
.sub "_block1108"   :subid("82_1336124771.95746") :outer("81_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 9
    $P1110 = allocate_llsig 1
    .local pmc signature_70
    set signature_70, $P1110
    null $P0
    null $S0
    get_hll_global $P126, "Mu"
    set_llsig_elem signature_70, 0, "$word", 128, $P126, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_70
    .return (signature)
.end


.HLL "perl6"

.namespace []
.sub "_block1121" :load :init  :subid("83_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 1
    $P116 = "!fire_phasers"("CHECK")
    .return ($P116)
.end


.HLL "perl6"

.namespace []
.sub "_block1123" :load  :subid("84_1336124771.95746")
.annotate 'file', "wordcount.pl"
.annotate 'line', 1
    .const 'Sub' $P1125 = "74_1336124771.95746" 
    $P117 = "!UNIT_START"($P1125)
    .return ($P117)
.end
