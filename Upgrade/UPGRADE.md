# UPGRADE EHDEN ACADEMY (draft)

This guide details the steps to upgrade the EHDEN Academy using a Bitnami Moodle image.

## Backup

You will need:

* PuTTY
* PuTTYgen
* Cyberduck
* Private key in the *.pem file forma

Follow these steps:

1. Using PuTTYgen create a *.ppk private key file from the *.pem private key file.
2. Using PuTTY connect to the EHDEN Academy via SSH. Use as Host Name **ubuntu@<URL, e.g. test-academy.ehden.eu or Amazon URL>**, use port 22, within Connection > SSH > Auth select the private key file in *.ppk format. 
3. create a backup folder in the root directory: mkdir backup
4. copy moodle data including user rights to the new backup directory: cp -rp ~/apps/moodle/moodledata/ ~/backup/ (consider to not copy cache, localcache, temp, sessions, trashdir to save space, these folder will be auto generated if missing after upgrade)
5. Make copy of sql database: mysqldump -uroot -p<password> bitnami_moodle > ~/backup/bitnami_moodle.sql
6. Using Cyberduck download the backup folder to your local machine, dont worry about access right for now, we will fix those later.

## Restore

1. Using PuTTYgen create a *.ppk private key file from the *.pem private key file.
2. Using PuTTY connect to the EHDEN Academy via SSH. Use as Host Name **ubuntu@<URL, e.g. test-academy.ehden.eu or Amazon URL>**, use port 22, within Connection > SSH > Auth select the private key file in *.ppk format. 
3. create a restore folder in the root directory (copying restore directly to the designatedmoodle folder (moodledata) is not possible due to missing access rights of Cyberduck): mkdir restore
4. Using Cyberduck upload bitnami_moodle.sql file and the moodledata folder to the restore directory.
5. Before actually restoring the data now log into the EHDEN Academy to be restored and install the three RemUI files for courses to be populated correctly. These files count as code backup which we skipped and instead just reinstall the plugins ourselves. This is also necessary to do for Coderunner.
6. Within PuTTY copy the files from the restore directory to the moodledata folder: cp -rp ~/restore/moodledata/ ~/apps/moodle/moodledata/
7. Now we have to fix access rights: cd to ~/apps/moodle/. chmod -R 755 moodledata/
Then chown -R bitnami:daemon moodledata/. Go into the moodledata folder and change environment/ rights using chown -R daemon:daemon environments/
