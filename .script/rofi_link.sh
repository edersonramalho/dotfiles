
style="squared-nord"

# dir="$HOME/.config/rofi/applets/menu/configs/$style"
rofi_command="rofi -theme $style"

# Error msg
msg() {
	rofi -theme "$style" -e "$1"
}

# Browser
if [[ -f /usr/bin/google-chrome-stable ]]; then
	app="google-chrome-stable"
elif [[ -f /usr/bin/chromium ]]; then
    app="chromium"
elif [[ -f /usr/bin/firefox ]]; then
    app="firefox"
#elif [[ -f /usr/bin/midori ]]; then
#	app="midori"
else
	msg "No suitable web browser found!"
	exit 1
fi

# Links
google=""
#facebook=""
twitter=""
github=""
mail=""
youtube=""
curso=""

# Variable passed to rofi
options="$google\n$twitter\n$github\n$mail\n$youtube\n$curso"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  $app" -dmenu -selected-row 0)"
case $chosen in
    $google)
        $app https://www.google.com &
        ;;    
    $twitter)
        $app https://twitter.com/home &
        ;;
    $github)
        $app https://github.com/edersonramalho &
        ;;
    $mail)
        $app https://www.gmail.com &
        ;;
    $youtube)
        $app https://www.youtube.com &
        ;;
    $curso)
        $app https://gestaoagil20.club.hotmart.com &
        ;;
esac