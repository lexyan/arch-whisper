#!/usr/bin/dumb-init /bin/bash

install_path="/opt/whisper"
virtualenv_path="${install_path}/venv"

# activate virtualenv where requirements have been installed from install.sh
source "${virtualenv_path}/bin/activate"

# run app (foreground)
#python3 "${install_path}/SABnzbd.py" --config-file /config --server 0.0.0.0:8080 --https 8090
python3 -m wyoming_faster_whisper \
    --uri 'tcp://0.0.0.0:10300' \
    --model "${WHISPER_MODEL}" \
    --beam-size "${WHISPER_BEAMSIZE}" \
    --language "${WHISPER_LANGUAGE}" \
    --data-dir /data \
    --download-dir /data
