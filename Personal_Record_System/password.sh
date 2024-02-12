#!/bin/bash

# Function to generate a random password
generate_password() {
  local length=$1

  # Define character sets for the password
  upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  lower="abcdefghijklmnopqrstuvwxyz"
  numbers="0123456789"
  special_chars="!@#$%^&*()-=_+[]{}|;:'\",.<>/?"
				    
  # Concatenate character sets
  all_chars="$upper$lower$numbers$special_chars"

  # Use /dev/urandom to generate random bytes and base64 to encode them
  password=$(head -c "$length" /dev/urandom | base64 | tr -dc "$all_chars" | head -c "$length")
						    
  echo "$password"
   }

  # Default password length
  default_length=12

  # Read user input for password length
  read -p "Enter the desired password length (default is $default_length): " user_length

  # Set password length to user input or default value
  length=${user_length:-$default_length}

  # Generate and print the password
  password=$(generate_password "$length")
  echo "Generated Password: $password"

