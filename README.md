# Cloudflare API DNS Backup

A bash script used to access the Cloudflare API remotely to backup the DNS Zone Configuration.<br /><br />

## Requirements

A Remote system for running the script and saving the output. <br />
(Iam using Debian for example, curl needs to be installed)<br /><br />

## Setup Cloudflare

You need to create an API Token and get the Zone ID of the DNS Zone you want to Backup. <br />
[Create Cloudflare API Key](https://github.com/ARC-XX/cloudflare_api_dns_backup/wiki/Create-Cloudflare-API-Key)<br />
[Get Cloudflare DNS Zone ID](https://github.com/ARC-XX/cloudflare_api_dns_backup/wiki/Get-Cloudflare-DNS-Zone-ID)<br /><br />

## Example Config Debian
Install the dependencies for debian to run the script

    $ sudo apt install curl

Make the script executable

    $ sudo chmod u+x /*pathtobackupscript*/cloudflare-api-dns-backup.sh

Execute the script through crontab, in the example at 1 in the morning

    $ sudo crontab -e

    0 1 * * * /*pathtobackupscript*/cloudflare-api-dns-backup.sh

## Sources
https://github.com/curl/curl <br />
https://developers.cloudflare.com/api/operations/dns-records-for-a-zone-export-dns-records<br /><br />

## License

This repository is licensed under the GNU General Public License v3.0. <br />
For more information, see the LICENSE file.<br /><br />

## Disclaimer

This repository is for educational and informational purposes only. <br />
The author assumes no liability for any damages that may arise from the use of the contents of this repository.<br /><br />

## Contributions

Contributions are always welcome! If you find an error or would like to suggest an improvement, please create an issue.
