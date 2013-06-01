package org.caralibroteam

import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.commons.CommonsMultipartFile
import java.text.DateFormat
import org.apache.commons.net.ftp.FTPClient
import org.apache.commons.net.ftp.FTP


class PhotoUploadService {

    
    def String uploadFile(CommonsMultipartFile aufile, String name, String destinationDirectory) {

		def server = "alom.hol.es"                   //server = "ftp.host.com"
		def ftp = new FTPClient()
		ftp.connect( server )
		ftp.login( 'u436546377', 'Supervisor' )     //ftp.login( 'username', 'password' )
		println "Connected to $server. $ftp.replyString"
		ftp.setFileType(FTP.BINARY_FILE_TYPE)
		ftp.enterLocalPassiveMode()
		//ftp.cwd(destinationDirectory)	
		def infile=aufile.inputStream
		def result=ftp.storeFile(name, infile)
		infile.close()
		ftp.logout()
		ftp.disconnect()
    }
}
