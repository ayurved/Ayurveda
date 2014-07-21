<?php namespace Vizioart\Cookbook\Services\FileHandler;

use Illuminate\Filesystem\Filesystem as File;
use Config;

class FileHandler extends File {

	// upload url from config
	public $upload_url;


	public function __construct(){
		//parent::__construct();
		$this->upload_url = Config::get('cookbook::cookbook.uploads_url');
	}

	/**
	 * Gets uploads url from config and optionally concatonates
	 * given url to uploads url
	 *
	 * There is one parameter,
	 * string that is url wished to be concatonated to uploads url
	 *
	 * @param string $url - optional url
	 * @return string uploads url.
	 */
	public function uploadsUrl($url = ''){
		$url = $this->upload_url . '/' . $url;
		$rtrim = !empty($url);
		$url = url($this->normalizeUrl($url, $rtrim));

		return $url;
	}

	/**
	 * Gets uploads relative url from config and optionally concatonates
	 * given url to uploads relative url
	 *
	 * There is one parameter,
	 * string that is url wished to be concatonated to uploads url
	 *
	 * @param string $url - optional url
	 * @return string uploads url.
	 */
	public function uploadsRelativeUrl($url = ''){
		$url = $this->upload_url . '/' . $url;
		$rtrim = !empty($url);
		$url = $this->normalizeUrl($url, $rtrim);
		$url = '/' . $url;
		return $url;
	}

	/**
	 * Gets uploads path from config and optionally concatonates
	 * given path to uploads path
	 *
	 * There is one parameter,
	 * string that is path wished to be concatonated to uploads path
	 *
	 * @param string $path - optional path
	 * @return string uploads path.
	 */
	public function uploadsPath($path = ''){
		$path = $this->upload_url . '/' . $path;
		$rtrim = !empty($path);
		$path = public_path() . '/' . $path;
		$path = $this->normalizePath($path, $rtrim);

		return $path;
	}

	/**
	 * Normalizes path slashes when mixed between path and url conversion
	 *
	 * It takes string with mixed or doubled slashes and converts them
	 * to single slashes dependent on system beacose of use of DIRECTORY_SEPARATOR const, 
	 * and optionally trims right slash.
	 *
	 * There are two parameters,
	 * string that will be normalized and optional rtrim flag
	 *
	 * @param string $path - string to be normalized
	 * @param boolean $rtrim - flag for right trim option
	 * @return string normalized path.
	 */
	public function normalizePath($path, $rtrim = true){
		$path = trim($path);
		// replace every back slash with forward slash
		$path = str_replace('\\', '/', $path);
		// replace all double slashes with single
		$path  = preg_replace( '/\/+/', '==DS==', $path );
		// trim slashes on begining
		$segments = explode('==DS==', $path);
		$path = implode(DIRECTORY_SEPARATOR, $segments);
		//$path = ltrim($path, DIRECTORY_SEPARATOR);

		if($rtrim){
			$path = rtrim($path, DIRECTORY_SEPARATOR);
		}

		return $path;
	}

	/**
	 * Normalizes url slashes when mixed between path and url conversion
	 *
	 * It takes string with mixed or doubled slashes and converts them
	 * to single forward slashes, and optionally trims right slash
	 *
	 * There are two parameters,
	 * string that will be normalized and optional rtrim flag
	 *
	 * @param string $url - string to be normalized
	 * @param boolean $rtrim - flag for right trim option
	 * @return string normalized url.
	 */
	public function normalizeUrl($url, $rtrim = true){
		$url = trim($url);
		// replace every back slash with forward slash
		$url = str_replace('\\', '/', $url);
		// replace all double slashes with single
		$url  = preg_replace( '/\/+/', '==DS==', $url );
		// trim slashes on begining
		$segments = explode('==DS==', $url);
		$url = implode('/', $segments);
		//$url = ltrim($url, '/');
		if($rtrim){
			$url = rtrim($url, '/');
		}
		return $url;
	}

	/**
	 * Formats number of bytes to human readable string.
	 *
	 * Rounds bytes to kb, Mb, Gb, Tb. Also you can specify to how many decimals
	 * string will be formated.
	 *
	 * There are two parameters,
	 * number of bytes and number of decimals
	 *
	 * @param int $bytes - number of bytes
	 * @param int $decimals - number of decimals
	 * @return string formated file size.
	 */
	public function formatFileSize( $bytes, $decimals = 0 ) {
		$quant = array(
			// ========================= Origin ====
			'Tb' => 1099511627776,  // pow( 1024, 4)
			'Gb' => 1073741824,     // pow( 1024, 3)
			'Mb' => 1048576,        // pow( 1024, 2)
			'kb' => 1024,           // pow( 1024, 1)
			'b ' => 1,              // pow( 1024, 0)
		);
		foreach ( $quant as $unit => $mag ) {
			if ( doubleval($bytes) >= $mag )
				return  number_format ( ($bytes / $mag), $decimals ). ' ' . $unit;	
		}
		return false;
	}

	/**
	 * Get a filename that is sanitized and unique for the given directory.
	 *
	 * If the filename is not unique, then a number will be added to the filename
	 * before the extension, and will continue adding numbers until the filename is
	 * unique.
	 *
	 * The callback is passed three parameters, the first one is the directory, the
	 * second is the filename, and the third is the extension.
	 *
	 * @param string $dir
	 * @param string $filename
	 * @param mixed $unique_filename_callback Callback.
	 * @return string New filename, if given wasn't unique.
	 */
	public function uniqueFilename( $dir, $filename, $unique_filename_callback = null ) {
		// sanitize the file name before we begin processing
		$filename = $this->sanitizeFileName($filename);

		// separate the filename into a name and extension
		$info = pathinfo($filename);
		$ext = !empty($info['extension']) ? '.' . $info['extension'] : '';
		$name = basename($filename, $ext);

		// edge case: if file is named '.ext', treat as an empty name
		if ( $name === $ext ) $name = '';

		// Increment the file number until we have a unique file to save in $dir. Use callback if supplied.
		if ( $unique_filename_callback && is_callable( $unique_filename_callback ) ) {
			$filename = call_user_func( $unique_filename_callback, $dir, $name, $ext );
		} else {
			$number = '';
			// change '.ext' to lower case
			if ( $ext && strtolower($ext) != $ext ) {
				$ext2 = strtolower($ext);
				$filename2 = preg_replace( '|' . preg_quote($ext) . '$|', $ext2, $filename );
				// check for both lower and upper case extension or image sub-sizes may be overwritten
				while ( file_exists($dir . DIRECTORY_SEPARATOR . $filename) || file_exists($dir . DIRECTORY_SEPARATOR . $filename2) ) {
					$new_number = $number + 1;
					$filename = str_replace( "$number$ext", "$new_number$ext", $filename );
					$filename2 = str_replace( "$number$ext2", "$new_number$ext2", $filename2 );
					$number = $new_number;
				}
				return $filename2;
			}
			while ( file_exists( $dir . DIRECTORY_SEPARATOR . $filename ) ) {
				if ( '' == "$number$ext" )
					$filename = $filename . ++$number . $ext;
				else
					$filename = str_replace( "$number$ext", ++$number . $ext, $filename );
			}
		}
		return $filename;
	}


	/**
	 * Sanitizes a filename replacing whitespace with dashes
	 *
	 * Removes special characters that are illegal in filenames on certain
	 * operating systems and special characters requiring special escaping
	 * to manipulate at the command line. Replaces spaces and consecutive
	 * dashes with a single dash. Trim period, dash and underscore from beginning
	 * and end of filename.
	 *
	 * @param string $filename The filename to be sanitized
	 * @return string The sanitized filename
	 */
	public function sanitizeFileName( $filename ) {
		$special_chars = array("?", "[", "]", "/", "\\", "=", "<", ">", ":", ";", ",", "'", "\"", "&", "$", "#", "*", "(", ")", "|", "~", "`", "!", "{", "}", chr(0));
		$filename = str_replace($special_chars, '', $filename);
		$filename = preg_replace('/[\s-]+/', '-', $filename);
		$filename = trim($filename, '.-_');

		// Split the filename into a base and extension[s]
		$parts = explode('.', $filename);

		// Return if only one extension
		if ( count($parts) <= 2 ) {
			return $filename;
		}
		
		// temporarily dont check for multiple extensions.
		return $filename;
		
	}

	/**
	 * Extracts filename from path, with or without extension
	 *
	 * You can optionally specify if you want extensino to be included
	 * Defaults to extension included
	 *
	 * @param string $path from wich filename will be extracted
	 * @param boolean $includeExtension flag for including extension
	 * @return string extracted filename
	 */
	public function getFileName( $path, $includeExtension = true ) {
		$option = ($includeExtension)?PATHINFO_BASENAME:PATHINFO_FILENAME;
		return pathinfo($path, $option);
	}
}