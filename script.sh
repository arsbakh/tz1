if ! command -v gcp &> /dev/null
then
    brew install coreutils
fi
echo "hello world,$1"
echo "files:"
find $1 -type f -print
echo "directorias:"
find $1 -type d -print
rm -rf $2 
mkdir -p $2
find $1 -type f -exec bash -c "cp --backup=numbered \"{}\" $2" \;
