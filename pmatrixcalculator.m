function p_matrix = pmatrixcalculator(transformation_m)
    p_matrix = [transformation_m(1,4);
        transformation_m(2,4);
        transformation_m(3,4);
        ];
end