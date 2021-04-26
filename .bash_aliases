# http://stefaanlippens.net/my_bashrc_aliases_profile_and_other_stuff/
# https://stackoverflow.com/a/23328996/5986651

function lazygit() {
    git add -A
    git commit -m "$1"
    git push
}

function lazywordcalc() {
    
    sed '/^>/d' < "$1" | wc -w

}

alias myblock="cd agent18/myblock"

alias fastblock="cd ~/agent18/DS-2020/blogs/fastblock/"

alias restart_network="sudo service network-manager restart"

########################################################
## https://askubuntu.com/a/671850/443958 

function time_off() {
	dconf write /com/canonical/indicator/datetime/time-format "'custom'"
	dconf write /com/canonical/indicator/datetime/custom-time-format "'%a %d %h'"	

}

function time_on(){
	dconf reset /com/canonical/indicator/datetime/time-format 
	dconf reset /com/canonical/indicator/datetime/custom-time-format 
}
###########################################################


#####################################################
## rclone http://agent18.github.io/notes.html

alias rclone_pc_to_drive="rclone copy agent18/g-drive/ GokulDrive:rclone-test-folder"

alias rclone_drive_to_pc="rclone sync GokulDrive:rclone-test-folder agent18/g-drive/"

alias rclone_check="rclone check GokulDrive:rclone-test-folder agent18/g-drive/"

#######################


