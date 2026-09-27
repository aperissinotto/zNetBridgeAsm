#!/bin/bash
ftp -n "$ZOS_FTP_HOST" <<EOF
user $ZOS_FTP_USER $ZOS_FTP_PASS
lcd /home/phantom/Projects/zNetBridgeAsm/CPYLIB
cd "'SYSP.ZNBRIDGE.CPYLIB'"
prompt
mget *
lcd /home/phantom/Projects/zNetBridgeAsm/JOBLIB
cd "'SYSP.ZNBRIDGE.JOBLIB'"
prompt
mget *
lcd /home/phantom/Projects/zNetBridgeAsm/MACLIB
cd "'SYSP.ZNBRIDGE.MACLIB'"
prompt
mget *
lcd /home/phantom/Projects/zNetBridgeAsm/OPTLIB
cd "'SYSP.ZNBRIDGE.OPTLIB'"
prompt
mget *
lcd /home/phantom/Projects/zNetBridgeAsm/PRCLIB
cd "'SYSP.ZNBRIDGE.PRCLIB'"
prompt
mget *
lcd /home/phantom/Projects/zNetBridgeAsm/SRCLIB
cd "'SYSP.ZNBRIDGE.SRCLIB'"
prompt
mget *
lcd /home/phantom/Projects/zNetBridgeAsm/TABLIB
cd "'SYSP.ZNBRIDGE.TABLIB'"
prompt
mget *
bye
EOF
