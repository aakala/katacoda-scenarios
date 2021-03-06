export OCI_CLI_SUPPRESS_FILE_PERMISSIONS_WARNING=True

# add this line to ~/.profile - to make oci a recognized shell command
echo 'oci() { /root/bin/oci "$@"; }' >> ~/.profile
# reload ~/.profile
. /root/.profile
# now oci is recognized as a command

echo "Installing OCI CLI"

# Install the OCI CLI in silent mode with default settings
bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)" > install-oci-cli.sh

chmod +777 install-oci-cli.sh

./install-oci-cli.sh --accept-all-defaults

##Refer https://www.katacoda.community/customizing-environment.html#background-scripts
##
