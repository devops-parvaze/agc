#!/bin/bash

############################################################
#Author: Parvaze
#Email: parvaze.mdmasud@gmail.com
#Creation Date:2024-05-11
#Modified Date:2024-05-19
#Description: Automate Suri key insertion
############################################################

# Get the hostname
HOSTNAME=$(hostname)

# Set common variables
CHAIN_SPEC="./minervaRaw.json"
PASSWORD_FILE="/opt/rustup"

# Set Suri Key variables based on hostname
if [ "$HOSTNAME" = "bootNode01" ]; then
  BASE_PATH="/opt/bootNode01"
  BABE_SURI="0x5658fa6f6b9ddee4408d930d03079d5fbb810963657d2c989d58cf89330884cb"
  GRANDPA_SURI="0x9b39182fe1d980e2dce3510e26c4623af87196a26f7f1e8f7e22e94a0a7245b3"
  IMON_SURI="0x3fd8af5e032ed5b191a8cb874684e480ac5a4cd025b2e4373dd527ef9250f2e7"
  AUDIO_SURI="0xc256f20a57f20ca1548ac5f03adfb984e02c572450654f880eb00d1cc42dc195"
elif [ "$HOSTNAME" = "bootNode02" ]; then
  BASE_PATH="/opt/bootNode02"
  BABE_SURI="0xb773a23bf3c68166da9a6f0e74ced5d3fd313149676a11d134e5796c4b0c7e1c"
  GRANDPA_SURI="0x817057e1be86ed9592f748261093236f073074c051ef2500808939cc41c264a1"
  IMON_SURI="0x8d79371c6b82696ddb6f22466d48b2544edcd1f9297306644f7bd377c77c2eb1"
  AUDIO_SURI="0xd7ef42afa6148cf581180904b63295508655624d12c1b89a6adda8c24e2a5f63"
elif [ "$HOSTNAME" = "bootNode03" ]; then
  BASE_PATH="/opt/bootNode03"
  BABE_SURI="0xa97612769d8d6103666076fdbaa782449dda40c85d4c312655ac7d7673a403be"
  GRANDPA_SURI="0x1d380be2573a9fc4bcef8494883bc89b32b73132dd1bfe0712b210999383bbbb"
  IMON_SURI="0xe19f6e398c4f1523956e41d49bcc85ba19aec4f730040ed0f0d979b1c1bf66f5"
  AUDIO_SURI="0xdfec39f5ff9c04b64a665b47756906bb993e29fc39d8a96f69c6db43c4222a29"
elif [ "$HOSTNAME" = "bootNode04" ]; then
  BASE_PATH="/opt/bootNode04"
  BABE_SURI="0xddf85704454f2bc82cf1bab556eb65a398975c0d4d0b859c05aaa1728e7e91b5"
  GRANDPA_SURI="0xf74ce2e04d1c0ba918f2944df44403c69b9ac6ea413d80e0ad857400b3c0f634"
  IMON_SURI="0x9a391cc416f0c1e79047a6a74f3c3a7d204e33132a98ed981dd977fc92120aaf"
  AUDIO_SURI="0xc7ea31568d550215f796a944efaa2a2d02ac8ac26cc4823e609d7ba6062444d9"
elif [ "$HOSTNAME" = "validatorNode05" ]; then
  BASE_PATH="/opt/validatorNode05"
  BABE_SURI="0x05048969e4d4a28bd8084d5340eea5701a96bff6444275768cc527b2591409c8"
  GRANDPA_SURI="0x184d664765e73d469fad1a5597095be263fefbd3e808edd92cbfed654f326e47"
  IMON_SURI="0xd4d88a46f1145d83eddf33c3bd20f34a8ad02884e87fa8d75a3df72fd882eb7d"
  AUDIO_SURI="0x3c1b3f4f1ee962a2335245a931d447eb96d8ac99a7b271ca5296ff1918346c22"
elif [ "$HOSTNAME" = "validatorNode06" ]; then
  BASE_PATH="/opt/validatorNode06"
  BABE_SURI="0xdb71292267b812eb5d23c906d923dde25a22883635a79545268897807c05e327"
  GRANDPA_SURI="0xb36bf9f8705e9ba7d5d8633288a23084ef31b1934a55fca70153682d95958818"
  IMON_SURI="0x651497fc973f1cf23bd3eccefbc8297f9fff6ca7dcf316ab0e245ddcb61db386"
  AUDIO_SURI="0x4172ab61c3f1b92dcc6c8555508d0bd111db6319d605c4ff9100cd8e885a20a3"
elif [ "$HOSTNAME" = "validatorNode07" ]; then
  BASE_PATH="/opt/validatorNode07"
  BABE_SURI="0x6039bb3292f114d1109cfaf60bcdc2f0a9b750121d98c9612191c9f5af4f3d14"
  GRANDPA_SURI="0xf40a2948d2dd0fe5f287e710859e49e96265424502092206a108cd946fb5166d"
  IMON_SURI="0xfbee0a9a09239867a789d1526b534505ecaf3b0eaa96389c7dcd8cc7d00d945c"
  AUDIO_SURI="0xc665b2e135d7823734408c8ca4d7c9eb9b51966a50d286de1d49ef81c191929a"
elif [ "$HOSTNAME" = "validatorNode08" ]; then
  BASE_PATH="/opt/validatorNode08"
  BABE_SURI="0x1bba7d085f4794a86f72a99988c0bb595959ad2e7873881f28118cb197954a99"
  GRANDPA_SURI="0x19a6339c09a8166245a99634a8af52075fe19726ba570dd2a73ae1a53221ffb3"
  IMON_SURI="0x82965f0de8f34362af93b7d15975092ce83d28447adb277ef0cb9b6d18bee13d"
  AUDIO_SURI="0x903983a7ee34769e13f6f79d72415afe715279d2239ff3bc8c4f42550f41394d"
elif [ "$HOSTNAME" = "validatorNode09" ]; then
  BASE_PATH="/opt/validatorNode09"
  BABE_SURI="0x038a17bd774437e0d756458347102b73eae2474708984f88d1548046a6a290cd"
  GRANDPA_SURI="0x84a8f95d58b644ccabee75cc05f67b0a2578c22a5ede07d14cfe12cbf6ac96c4"
  IMON_SURI="0x0c3e7bd24d88beae10a850233c267d5a589c8ff0bf39729a56fad76f242b7085"
  AUDIO_SURI="0x85c912fcb61d7f6487efcad6316ca3f149cfbe005b1a60c50d67664a3abaf57e"
elif [ "$HOSTNAME" = "validatorNode10" ]; then
  BASE_PATH="/opt/validatorNode10"
  BABE_SURI="0xd3974ae18adad54bfb8fd6a240eaa94014eafd34e3350d8cd4891a8a81b3d158"
  GRANDPA_SURI="0xf25c36d4f8d7f929b157440945d16de424434b0d941029786ed80ff88c50f926"
  IMON_SURI="0x525a4564056b14f0e402ef87abf2cd14e907b2d0f0fdfebf8eff946cafd9dda8"
  AUDIO_SURI="0xbbfe67afccbbdce892c21361ac8aeb30f3f593f7b0bf1cec480abc8363a4c992"
elif [ "$HOSTNAME" = "validatorNode11" ]; then
  BASE_PATH="/opt/validatorNode11"
  BABE_SURI="0x1a1f10602cc1aef761cc9505d0528afd09303f47971147e3ed6134f5d17aed6b"
  GRANDPA_SURI="0xa4ed0aad5ecc4b0de78df66e910ee05ea3894560d352d4b7e1044a9108644f8a"
  IMON_SURI="0xa044a9ddeb99b46663c92fbd98c5b0c61d68fe0625cefd5e7c605c076217f580"
  AUDIO_SURI="0x98f472a1cc16fef3fcca43d77c364ad2a6edf08ed955336daa23a65cb4cd4ee3"
elif [ "$HOSTNAME" = "validatorNode12" ]; then
  BASE_PATH="/opt/validatorNode12"
  BABE_SURI="0x747130f6bf7d6a86e13797a10b20311064a8414088cb8cbf356c99e1aebc0bad"
  GRANDPA_SURI="0xab93833ac8278aeb08369c7b82ac44249fb676c357840cd771f483bfb3ace452"
  IMON_SURI="0x811dc8d85d1e260ca7db7053dc3f2416bb1a9654b207ad01d446e07e14f392a7"
  AUDIO_SURI="0x5dc5916c5f5a8701fc1dc889b31c2eabd5291ba766033dd6d9da3ed4c99c77a3"
else
  echo "Unknown node hostname: $HOSTNAME"
  exit 1
fi

# Check if the base path directory exists
if [ -d "$BASE_PATH" ]; then
  # Purge the chain and remove the node data
  yes | ./target/release/argochain purge-chain --base-path $BASE_PATH --chain $CHAIN_SPEC
  rm -rf $BASE_PATH
fi

# Recreate the base path directory
mkdir -p $BASE_PATH

# Provide permissions for accessing it
sudo chown -R ubuntu:ubuntu "$BASE_PATH"
sudo chmod -R 755 "$BASE_PATH"

# Insert BABE key
./target/release/argochain key insert --base-path $BASE_PATH \
  --chain $CHAIN_SPEC \
  --scheme Sr25519 \
  --suri $BABE_SURI \
  --password-filename $PASSWORD_FILE \
  --key-type babe

# Insert GRANDPA key
./target/release/argochain key insert --base-path $BASE_PATH \
  --chain $CHAIN_SPEC \
  --scheme Ed25519 \
  --suri $GRANDPA_SURI \
  --password-filename $PASSWORD_FILE \
  --key-type gran

# Insert IMON key
./target/release/argochain key insert --base-path $BASE_PATH \
  --chain $CHAIN_SPEC \
  --scheme Sr25519 \
  --suri $IMON_SURI \
  --password-filename $PASSWORD_FILE \
  --key-type imon

# Insert AUDIO key
./target/release/argochain key insert --base-path $BASE_PATH \
  --chain $CHAIN_SPEC \
  --scheme Sr25519 \
  --suri $AUDIO_SURI \
  --password-filename $PASSWORD_FILE \
  --key-type audi

# List contents of the base path to confirm the node directory creation
ls -la "$BASE_PATH"

# List contents of /opt/ to confirm overall structure
ls -la /opt/
