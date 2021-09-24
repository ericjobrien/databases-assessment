log_file = open("um-server-01.txt") #this line of code creates an access key to the um-server-01.txt document.  Now we can use python to assess the data.

# function below created to loop through the rows of data stored in the .txt document.
# first line declares the function and sets log_file as the argument the function will take in.  log_file is the variable that stores the rows of data from um-server-01.txt
# second line creates a for-in loop which is a function that will loop through the rows of data.
# third line separates each line of data into different lists
# fourth line declares a variable named day and sets it equal to 0 to 3 index, establishing that the first four values in each line represent a day of the week
# fifth line creates a condition, if the day varialbe is equal to "Tue"
# sixth line specifies what code to fire if the above condition is met, which means if day equals Tuesday, print the line of data.
# To query for Monday, change the condition in the if statement to if day == 'Mon':


# def sales_reports(log_file):
#     for line in log_file:
#         line = line.rstrip()
#         day = line[0:3]
#         if day == "Mon":
#           print(line)


# sales_reports(log_file)

def print_melon(log_file):
    for line in log_file:
        line = line.rstrip()
        melon_str = line[15:18]
        melon = int(melon_str)
        if melon > 10:
            print(line)


print_melon(log_file)