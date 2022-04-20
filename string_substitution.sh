#!/bin/bash

# Declare variables.
pattern1="sample"
pattern2="sample-1"
pattern3="sample.fe"
pattern4="sample.ui"
pattern5="smrdp-ui-sample"
pattern6="smrdp-fe-ui-sample"

declare -l work_dir
declare -l DIR
declare -l replacement_string
declare -l repository_name

# 1. Working directory, i.e. location of the cloned repository on your local machine.
echo -n "Enter directory path: "
read -r work_dir

# 2. Specify tne name of the directory inside the webapps folder. This is the name of the new webapp.
echo -n "Enter a name of the directory to create: "
read -r DIR

# 3. Specify replacement string. Should match the name of the webapp. Replaces all occurrences of the string 'webuiapp' with the name of the webapp.
echo -n "Enter a name of the replacement string: "
read -r replacement_string

# 4. Enter repository name. This is the name of the repository on GitHub. Used for string substitution as well.
echo -n "Enter the preferred repository name: "
read -r repository_name

# Renames the subdirectory "webuiapp" with the value of "DIR".
mv ${work_dir}/webapps/sample-1 ${work_dir}/webapps/${DIR}

# Finds all files in the working directory and subdirectories. Replaces the strings "sample","sample-1", "sample.fe", "smrdp-fe-ui-sample" etc.
# with the values of the patterns defiined at the top of the script".
for i in $work_dir/*; do
    find $work_dir -type f -exec sed -i "s_${pattern6}_${repository_name}_g" {} + ;
    find $work_dir -type f -exec sed -i "s_${pattern5}_${repository_name}_g" {} + ;
    find $work_dir -type f -exec sed -i "s_${pattern4}_${replacement_string}_g" {} + ;
    find $work_dir -type f -exec sed -i "s_${pattern3}_${replacement_string}_g" {} + ;
    find $work_dir -type f -exec sed -i "s_${pattern2}_${replacement_string}_g" {} + ;
    find $work_dir -type f -exec sed -i "s_${pattern1}_${replacement_string}_g" {} + ;
done

echo "All strings replaced. Script execution successful."
exit 0
