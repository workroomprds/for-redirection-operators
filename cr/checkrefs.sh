while read -r referenced_String; do
    matches=$(grep -Flsi "$referenced_String" *)
    echo "## ${referenced_String}"
    if [ -n "$matches" ]; then
        echo "$matches"
    else
        echo "unreferenced"
    fi
done