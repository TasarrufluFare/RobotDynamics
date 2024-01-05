function rotation_matrix = rotationmatrixcalculator(transformation_m)
    rotation_matrix = [transformation_m(1,1),transformation_m(1,2),transformation_m(1,3);
        transformation_m(2,1),transformation_m(2,2),transformation_m(2,3);
        transformation_m(3,1),transformation_m(3,2),transformation_m(3,3);
        ];
end