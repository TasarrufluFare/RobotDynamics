function matrices = transformationmatrixcalculator(input_dh)
    matrices = cell(1, size(input_dh, 1));
    for i = 1:8
        gecerli_eklem = input_dh(i, :);
        alpha = gecerli_eklem(1);
        a = gecerli_eklem(2);
        d = gecerli_eklem(3);
        theta = gecerli_eklem(4);
        
        c_theta = cos(deg2rad(theta));
        s_theta = sin(deg2rad(theta));
        c_alpha = cos(deg2rad(alpha));
        s_alpha = sin(deg2rad(alpha));


        transformation_matrix = [round(c_theta, 3), round(-1*s_theta, 3), 0, round(a,3);
            round(s_theta*c_alpha,3), round(c_theta*c_alpha,3),round(-1*s_alpha,3),round(-1*s_alpha*d,3);
            round(s_theta*s_alpha,3), round(c_theta*s_alpha,3), round(c_alpha,3), round(c_alpha*d,3);
            0,0,0,1];

        matrices{i} = transformation_matrix;

    end
end