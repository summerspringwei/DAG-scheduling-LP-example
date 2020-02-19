Minimize
    value: tt

Subject To
    \ tt is the end time
    tt - s_1_1 - [ s_1_1 * t_1_1 ] > 0
    tt - 2 s_1_2 - [ s_1_2 * t_1_2 ] > 0
    tt - 3 s_1_3 - [ s_1_3 * t_1_3 ] > 0
    tt - s_2_1 - [ s_2_1 * t_2_1 ] > 0
    tt - 2 s_2_2 - [ s_2_2 * t_2_2 ] > 0
    tt - 3 s_2_3 - [ s_2_3 * t_2_3 ] > 0
    \ Node 3 is started after node 2 is finished
    t_1_2 - (1 + t_1_1) > 0
    t_2_2 - (2 + t_2_1) > 0
    \ Nodes are noly executed once
    s_1_1 + s_2_1 = 1
    s_1_2 + s_2_2 = 1
    s_1_3 + s_2_3 = 1
    \ Start time is grater than 0
    t_1_1 >= 0
    t_1_2 >= 0
    t_1_3 >= 0
    t_2_1 >= 0
    t_2_2 >= 0
    t_2_3 >= 0

 
Binary
    s_1_1
    s_1_2
    s_1_3
    s_2_1
    s_2_2
    s_2_3

End
