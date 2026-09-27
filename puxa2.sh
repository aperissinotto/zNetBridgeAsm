#!/bin/bash

BASE="/home/phantom/Projects/zNetBridgeAsm"

LIBS=(
    CPYLIB
    JOBLIB
    MACLIB
    OPTLIB
    PRCLIB
    SRCLIB
    TABLIB
)

ftp -n "$ZOS_FTP_HOST" < <(
    echo "user $ZOS_FTP_USER $ZOS_FTP_PASS"
    echo "prompt"

    for lib in "${LIBS[@]}"; do
        echo "lcd $BASE/$lib"
        printf 'cd "\047SYSP.ZNBRIDGE.%s\047"\n' "$lib"
        echo "mget *"
    done

    echo "bye"
)
