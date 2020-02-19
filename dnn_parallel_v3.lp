Minimize
    value: tt

Subject To
    \ tt is the end time
    \ and we convert the binary quadratic optimization problem to big-M form
    \ therefore the problem become a linear programing 
    
    tt + M s_1_1  > 0
    tt - t_1_1 + M (1 - s_1_1) > 1
    tt + M s_1_2 > 0
    tt - t_1_2 + M (1 - s_1_2) > 2
    tt + M s_1_3 > 0
    tt - t_1_3 + M (1 - s_1_3) > 3
    tt + M s_2_1 > 0
    tt - t_2_1 + M (1 - s_2_1) > 1
    tt + M s_2_2 > 0
    tt - t_2_2 + M (1 - s_2_2) > 2
    tt + M s_2_3 > 0
    tt - t_2_3 + M (1 - s_2_3) > 3

    \ Node 3 is started after node 2 is finished
    t_1_2 - (1 + t_1_1) > 0
    t_2_2 - (1 + t_2_1) > 0
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

Bounds
    M = 100
 
Binary
    s_1_1
    s_1_2
    s_1_3
    s_2_1
    s_2_2
    s_2_3

End
