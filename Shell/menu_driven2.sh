#!/bin/bash
 while true
do
  echo "Select an option:"
  echo "1. Make a file."
  echo "2. Display contents."
  echo "3. Copy the file."
  echo "4. Rename the file."
  echo "5. Delete the file."
  echo "6. Exit."
   read option
   case $option in
    1)
      echo "Enter file name: "
      read file_name
       if [[ -f $file_name ]]; then
        echo "File already exists."
      else
        echo "Enter data, press ^D to save and return to menu:"
        cat > $file_name
      fi
      ;;
    2)
      echo "Enter file name: "
      read file_name
       if [[ -f $file_name ]]; then
        cat $file_name
      else
        echo "File does not exist."
      fi
      ;;
    3)
      echo "Enter source file name: "
      read source_file
       if [[ -f $source_file && -r $source_file ]]; then
        echo "Enter target file name: "
        read target_file
         if [[ ! -f $target_file ]]; then
          cp $source_file $target_file
        else
          echo "Target file already exists."
        fi
      else
        echo "Source file does not exist or is not readable."
      fi
      ;;
    4)
      echo "Enter source file name: "
      read source_file
       if [[ -f $source_file && -r $source_file ]]; then
        echo "Enter target file name: "
        read target_file
         if [[ ! -f $target_file ]]; then
          mv $source_file $target_file
        else
          echo "Target file already exists."
        fi
      else
        echo "Source file does not exist or is not readable."
      fi
      ;;
    5)
      echo "Enter file name: "
      read file_name
       if [[ -f $file_name && -w $file_name ]]; then
        echo "Are you sure you want to delete $file_name? (y/n)"
        read confirmation
         if [[ $confirmation == "y" ]]; then
          rm $file_name
          echo "File deleted."
        else
          echo "File not deleted."
        fi
      else
        echo "File does not exist or is not writable."
      fi
      ;;
    6)
      exit
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
done
