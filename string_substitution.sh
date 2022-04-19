#!/bin/bash

# Declare variables.
# 1. Working directory, i.e. location of the cloned repository on your local machine.
# 2. Specify tne name of the directory inside the webapps folder. This is the name of the new webapp.
# 3. Specify replacement string. Should match the name of the webapp. Replaces all occurrences of the string 'sample-1' with the name of the webapp.

declare -l work_dir
declare -l DIR
declare -l replacement_string

echo -n "Enter directory path: "
read -r work_dir

echo -n "Enter a name of the directory to create: "
read -r DIR

echo -n "Enter a name of the replacement string: "
read -r replacement_string

# Renames the subdirectory "sample-1" with the value of "DIR".
mv ${work_dir}/webapps/sample-1 ${work_dir}/webapps/${DIR}


# Finds all files in the working directory and subdirectories. Replaces the string "sample-1" with the value of "replacement_string".
for i in ${work_dir}; do
    find ${work_dir} -type f -not -path '*/\.*' -exec sed -i "s/sample-1/${replacement_string}/g" {} +
    echo $i
done
