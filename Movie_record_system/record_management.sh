#!/bin/bash

# Function to display the menu
show_menu() {
 echo "Personal Record Management System"
 echo "1. Add New Record"
 echo "2. Edit Existing Records"
 echo "3. Search for Records"
 echo "4. Generate Reports"
 echo "5. Exit"
 echo -n "Enter your choice (1-5): "
   }

# Function to add a new record
add_record() {
 echo "Adding a new record..."
# Add your logic here for adding a new record
 echo "Record added successfully!"
 }
# Function to edit existing records
edit_records() {
 echo "Editing existing records..."
# Add your logic here for editing existing records
 echo "Records edited successfully!"
 }
 # Function to search for records
 search_records() {
 echo "Searching for records..."
 # Add your logic here for searching records
  }
# Function to generate reports
generate_reports() {
 echo "Generating reports..."
# Add your logic here for generating reports
  }
# Main menu loop
  while true; do
									        clear
   show_menu

  read choice
  case $choice in
     1) add_record ;;
 
     2) edit_records ;;

     3) search_records ;;

     4) generate_reports ;;

     5) echo "Exiting..."; exit ;;

     *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
  esac


  echo -n "Press Enter to continue..."
									        read -r
  done

