package org.caralibroteam

class Photo {
	String name
	String title
	Date dateUploaded
    static constraints = {
		title blank:false
    }
}
