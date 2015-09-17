<?php
//Set header
header("Content-type: text/plain");

//Define vars
$log = array();
$ret = null;

//Update GIT repository
echo "Executing git pull origin master...\n";

exec("git pull origin master", $log, $ret);

if($ret === 0){

	//Execute NPM doc
	echo "Executing npm run doc...\n";

	exec("npm run doc", $log, $ret);

}

echo "\nLog ($ret):\n";
echo join("\n", $log);

//Mail output
echo "\nSending log to mail...\n";
mail("info@meta-platform.com", "META Codebase deployment log", join("\n", $log));

echo "Done.";