Minimize
    value: tt

Subject To

    t_1_2 - (1 + t_1_1) > 0
    tt - t_1_3 > 0
    tt - t_2_3 >0


    s_1_1 + s_2_1 = 1
    s_1_2 + s_2_2 = 1
    s_1_3 + s_2_3 = 1
    
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


Minimize
obj: a + b + [ a^2 + 4 a * b + 7 b^2 ]/2
Subject To
c1: a + b >= 10
c2: [ a^2 + 4 a * b + 7 b^2 ]/2 <= 2
End