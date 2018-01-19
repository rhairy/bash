print_usage () {
        echo "example.sh [OPTION]... [FILE]..."
}

while getopts "af:h" opt; do
        case $opt in
                a)
                        echo "Hello, World!"
                        ;;
                f)
                        f="$OPTARG"
                        ;;
                h)
                        print_usage
                        ;;
                *)
                        print_usage
                        ;;
        esac
done
