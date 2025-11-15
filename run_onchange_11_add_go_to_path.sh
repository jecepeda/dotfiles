#!/bin/bash
#!/bin/bash
ZPROFILE_FILE="$HOME/.zprofile"
GO_PATH_LINE="export PATH=\$PATH:/usr/local/go/bin"

if [ ! -f "$ZPROFILE_FILE" ] || ! grep -qF -- "$GO_PATH_LINE" "$ZPROFILE_FILE"; then
    echo "$GO_PATH_LINE" >> "$ZPROFILE_FILE"
    echo "Go path added to $ZPROFILE_FILE"
else
    echo "Go path already exists in $ZPROFILE_FILE"
fi
