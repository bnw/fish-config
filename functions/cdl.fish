function cdl
	set dirs ./*/
    if set -q dirs[1]
        set last_changed_dir (\ls -1dt $dirs | head -n 1)
        cd $last_changed_dir
    else
        echo "No directory"
        return 1
    end
end
