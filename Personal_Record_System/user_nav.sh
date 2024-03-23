#!bin/bash

#main menu function
show_menu(){
	echo "
	Personal record Management System
	1. Add New Record
	2. Edit Existing Records
	3. Search for Records
	4. Gemerate Reports
	5.Exit
	"
	echo -n "Enter your choice (1-5): "
}

#func to add new record
add_record(){
	echo "adding a new record"
	#print success message
	echo "Record added sucessfully!"
}
edit_records() {
	echo "Editing existing records.."
	#print succes message
	echo "Records edited succefully"
}

#function to search for records
search_records(){
	echo "searching for records"
}

#function to generate reports
generate_reports(){
	echo "generating reports..."
}

#Main menu loop
while true; do
	clear
	show_menu

	read choice
	
	case $choice in
		1) add_record ;;
		2) edit_records ;;
		3) search_records ;;
		4) genrate_reports ;;
		5) echo "Exiting.."; exit ;;
		*) echo "Invalid choice Please enter a number between 1 and 5."
	esac

	echo -n "press Enter to continue..."
	read -r
done
