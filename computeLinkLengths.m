function link_lengths = computeLinkLengths(points)
    link_lengths = zeros(1, 8);
    for i = 1:8
        link_lengths(i) = norm(points(:, i+1) - points(:, i));
    end
end