auth=$(echo -n "$USER:$PASSWORD" | base64 -w0)
cat <<EOF > config.json
{
    "auths": {
        "$REGISTRY": {
            "auth": "$auth"
        }
    }
}
EOF
