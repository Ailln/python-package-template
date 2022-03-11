echo -e "# SET PACKAGE NAME\n"

os_name=$1
old_name=$2
new_name=$3

if [ ! -n "$os_name" -o ! -n "$old_name" -o ! -n "$new_name" ]; then
    echo "Usage: bash $0 os_name old_name new_name"
    exit 1
else
    echo "Arguments:"
    echo "- os_name: $os_name"
    echo "- old_name: $old_name"
    echo "- new_name: $new_name"
    echo -e "\n"

    case $os_name in
        mac|Mac|osx|osX)
            sed -i "" "s/${old_name}/${new_name}/g" setup.py
            sed -i "" "s/${old_name}/${new_name}/g" MANIFEST.in

            mv ${old_name} ${new_name}

            sed -i "" "s/${old_name}/${new_name}/g" ./${new_name}/__init__.py
            sed -i "" "s/${old_name}/${new_name}/g" ./${new_name}/shell/__init__.py
            sed -i "" "s/${old_name}/${new_name}/g" ./${new_name}/shell/usage.py

            echo "> done"
            ;;
        linux|Linux)
            sed -i "s/${old_name}/${new_name}/g" setup.py
            sed -i "s/${old_name}/${new_name}/g" MANIFEST.in

            mv ${old_name} ${new_name}

            sed -i "s/${old_name}/${new_name}/g" ./${new_name}/__init__.py
            sed -i "s/${old_name}/${new_name}/g" ./${new_name}/shell/__init__.py
            sed -i "s/${old_name}/${new_name}/g" ./${new_name}/shell/usage.py

            echo "> done"
            ;;
        *)
            echo "os_name only support mac or linux"
            exit 1
            ;;
    esac
fi
