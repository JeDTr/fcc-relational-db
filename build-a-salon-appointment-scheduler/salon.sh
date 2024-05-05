#! /bin/bash
PSQL="psql --tuples-only --username=freecodecamp --dbname=salon -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo $1
  else
    echo -e "\nWelcome to My Salon, how can I help you?"
  fi

  echo "$($PSQL "SELECT * FROM services")" | while read SERVICE_ID BAR NAME
  do
    echo "$SERVICE_ID) $NAME"
  done

  read SERVICE_ID_SELECTED

  case $SERVICE_ID_SELECTED in
  1|2|3|4|5) BOOK_MENU $SERVICE_ID_SELECTED;;
  *) MAIN_MENU "I could not find that service. What would you like today?"
  esac
}

BOOK_MENU() {
  echo -e "\nWhat's your phone number?"
  # 555-555-5555
  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_NAME ]]
  then
    # I don't have a record for that phone number, what's your name?
    # Fabio
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME

    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers (phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  # What time would you like your cut, Fabio?
  # 10:30
  echo -e "\nWhat time would you like your cut, Fabio?"
  read SERVICE_TIME

  # I have put you down for a cut at 10:30, Fabio.
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $1, '$SERVICE_TIME')")

  echo -e "\nI have put you down for a cut at $SERVICE_TIME, $CUSTOMER_NAME."
}

MAIN_MENU