% this MATLAB script will print a greeting on the screen 
% it will ask the user for the name of their group
disp('Hello! Welcome to the Group Demographics Collector!');
group_name = input('Please enter the name of your group: ', 's');
% and prompt the user to enter the number of members their group has
num_members = input('Please enter the number of members in your group: ');
% then it will create a data structure thats empty
group_data = struct();
% it will prompt the user for the names of the members
member_names = cell(1, num_members);
for i = 1:num_members
    member_names{i} = input(sprintf('Please enter the name of member %d: ', i), 's');
end
% then it will iterate over the given names
for i = 1:num_members
    member_info = struct();
    member_info.name = member_names{i};
    member_info.home_district = input(sprintf('Please enter the home district of %s: ', member_info.name), 's');
    member_info.religion = input(sprintf('Please enter the religion of %s: ', member_info.name), 's');
    member_info.tribe = input(sprintf('Please enter the tribe of %s: ', member_info.name), 's');
    member_info.village = input(sprintf('Please enter the village of %s: ', member_info.name), 's');
    member_info.courses = input(sprintf('Please enter the courses of %s (comma-separated): ', member_info.name), 's');
    member_info.interests = input(sprintf('Please enter the interests of %s (comma-separated): ', member_info.name), 's');
    member_info.age = input(sprintf('Please enter the age of %s: ', member_info.name));
    member_info.facial_representation = input(sprintf('Please enter the facial representation of %s: ', member_info.name), 's');
    % it will save that one persons info into a variable, the variable will preferably hold a struct for that person
    group_data.(member_info.name) = member_info;
end
% the script will exit the loop with a final thank you and an adieu!
disp('Thank you for providing the information about your group: %s\n', group_name);
