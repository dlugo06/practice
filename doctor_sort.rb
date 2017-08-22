def doctor_sort(csv_string)
    arr_of_arrs = []
    array_of_strings = csv_string.split("\n")
    array_of_strings.each do |doctor_string|
        arr_of_arrs << doctor_string.split(",")
    end
    priority_1_index = 3
    priority_2_index = 4
    current = 0
    for i in (0..arr_of_arrs.length)
        if arr_of_arrs[i][current] > arr_of_arrs[i + 1][current]
            #swap
            arr_of_arrs[i][current], arr_of_arrs[i + 1][current] = arr_of_arrs[i + 1][current], arr_of_arrs[i][current]
        end
    end
end

csv = "1,alex,80405,13,5
3,bob,94123,320,1.5
2,jane,94032,35,2.8
4,will,94110,31.6,6.1
5,jess,94117,48,4
6,sam,94032,31.4,9
7,jim,94036,35,19";

p doctor_sort(csv)
