Minimize
    value: tt

Subject To
    \ tt is the end time
    \ and we convert the binary quadratic optimization problem to big-M form
    \ therefore the problem become a linear programing 
    \ tt - t_1_2 + 100 (1 - s_1_2 ) - (s_1_2 - s_1_1) * c_1_2 > 2

    tt + 100 s_1_1 >= 0
    tt - t_1_1 + 100 (1 - s_1_1) >= 1
    tt + 100 s_2_1 > 0
    tt - t_2_1 + 100 (1 - s_2_1) >= 1
    tt + 100 s_1_2 > 0
    tt - t_1_2 + 100 (1 - s_1_2) - (s_1_2 - s_1_1) >= 20
    tt + 100 s_2_2 > 0
    tt - t_2_2 + 100 (1 - s_2_2) - (s_2_2 - s_2_1) >= 2
    tt + 100 s_1_3 > 0
    tt - t_1_3 + 100 (1 - s_1_3) >= 3
    tt + 100 s_2_3 > 0
    tt - t_2_3 + 100 (1 - s_2_3) >= 3

    \ Node 2 is started after node 1 is finished
    t_1_2 - t_1_1 >= 1
    t_2_2 - t_2_1 >= 1
    t_1_2 - t_2_1 >= 1
    t_2_2 - t_1_1 >= 1
    \ Nodes are only executed once
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
    t_1_1 <= 30
    t_1_2 <= 30
    t_1_3 <= 30
    t_2_1 <= 30
    t_2_2 <= 30
    t_2_3 <= 30
 
Binary
    s_1_1
    s_1_2
    s_1_3
    s_2_1
    s_2_2
    s_2_3

End
