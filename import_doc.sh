#Import repo function (doc_name, repository, doc_src_directory_relative_to_repo, doc_dst_directory_relative_to_current)
function import_doc () {

	echo "Importing $1 ..."

	#Create directory
	mkdir -p "./temp/$1"

	#Check for repository
	if [ -d "./temp/$1/.git" ]; then
		echo "- Updating repository..."
		git -C "./temp/$1" pull origin master
	else
		echo "- Cloning repository..."
		git clone $2 "./temp/$1"
	fi

	#Link structure
	echo "- Linking page directory..."
	cp -R "./temp/$1/$3/pages/" "./pages/$4"

	#Copy media files
	echo "- Syncing media files..."
	cp -R "./temp/$1/$3/media/" "./media"

}

#Create temp
echo "Checking for temp directory..."
mkdir -p "./temp"

#Import repositories
import_doc "meta-doc" "https://github.com/metaplatform/meta-doc" "doc" "80_Libraries/10_META_Doc"
import_doc "meta-logger" "https://github.com/metaplatform/meta-logger" "doc" "80_Libraries/20_META_Logger"