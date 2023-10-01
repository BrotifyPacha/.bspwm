case "$(bspc query --monitors | wc -l )" in
    "3")
        echo "configuring 3 monitors"
        bspc monitor HDMI-0 -d V1 V2 V3 V4
        bspc monitor DP-2  -d 1 2 3 4 5 6
        bspc monitor DP-4 -d 7 8 9 0 Z M
        ;;
    "2")
        echo "configuring 2 monitors"
        bspc monitor HDMI-1 -d 1 2 3 4 5 6
        bspc monitor eDP-1 -d 7 8 9 0 Z M
        ;;
    *)
        echo "configuring 1 monitor"
        bspc monitor HDMI-1 -d 1 2 3 4 5 Z M
esac
