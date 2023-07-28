#!/bin/bash

# Declare an empty array
cfApps=()

# Execute the `cf apps` command, filter only the first column results, and add # the output values of the first column to the `cfApps` array.
while IFS=' ' read -r line; do cfApps+=("$line"); done < <(cf apps | awk '{print $1}' | sed '1,3d')


# Print the data stored in the `cfApps` array
# printf '%s\n' "${cfApps[@]}"


# Do a `for` loop against the array `cfApps`, and execute the `cf app` command # or each value. Store the output into a second array `deploymentDate`, combine # the two arrays into the associative array `formattedArray` and format the    # the `key`, value` data.

formattedArray=()

# Loop through each app and get the deployment date
for app in "${cfApps[@]}"; do
    deploymentDate=$(cf app "$app" | sed -n 6p | cut -d ' ' -f 8-9,12)
    formattedArray+=("$app: $deploymentDate")

    # Check if the deployment date is older than 30 days
    currentDate=$(date +%s)
    deploymentEpoch=$(date -d "$deploymentDate" +%s)
    timeDifference=$(( (currentDate - deploymentEpoch) / (24*60*60) ))

    if [ "$timeDifference" -gt 30 ]; then
        echo "$app: $deploymentDate is older than 30 days"
    else
        echo "$app: $deploymentDate is not older than 30 days"
    fi
done


# Execute the `cf services` command, filter only the results in the first 
# column, and add the output values to the `cfServices` array.
 
 while IFS=' ' read -r line; do cfServices+=("$line"); done < <(cf services | awk '{print $1}' | sed '1,3d')
 
 
# Print the data stored in the `cfApps` array
# printf '%s\n' "${cfServices[@]}"


# Do a `for` loop against the `cfServices` array, and execute the `cf service` # command for each entry. Store the output into a second array  #`ServicecDeploymentDate`, combine the two arrays into the associative array 
# `formattedArray` and format the `key`, `value` output.


for service in "${cfServices[@]}"; do
    ServiceDeploymentDate=$(cf service "$service" | sed -n 19p | cut -d ' ' -f 7)
    formattedArrayServices+=("$service: $ServiceDeploymentDate")
	
	# Check if the deployment date is older than 30 days
    currentDate=$(date +%s)
    ServiceDeploymentEpoch=$(date -d "$ServiceDeploymentDate" +%s)
    DeploymentTimeDifference=$(( (currentDate - ServiceDeploymentEpoch) / (24*60*60) ))

    if [ "$DeploymentTimeDifference" -gt 30 ]; then
        echo "$service: $ServicecDeploymentDate is older than 30 days"
    else
        echo "$service: $ServicecDeploymentDate is not older than 30 days"
    fi
done
