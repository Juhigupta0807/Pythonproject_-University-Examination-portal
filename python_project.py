import mysql.connector
mydb= mysql.connector.connect(host = "localhost", user = "root", password = "juhi@1234#1", database = "University")
mycursor = mydb.cursor()
import pandas as pd
import random
while True:
    n = int(input("MAIN LOGIN :\n1. Admin\n2. Student\n3.Faculty\n4. EXIT\nEnter your choice number: "))

    if n == 1:
        print("\n--- Admin Login ---")
        username = input("Enter admin username: ")
        password = input("Enter admin password: ")

        mycursor.execute(
            "SELECT * FROM admin_details WHERE admin_name=%s AND admin_password=%s",
            (username, password)
        )
        admin = mycursor.fetchone()

        if admin:
            print("\nLogin Successful! Welcome,", username)
            while True:
                s = int(input("""ADMIN FEATURES \n1. Add Student \n2. Add Faculty\n3. Finding a Student\n4. Finding a Faculty\n5. Delete student\n6. Delete Faculty\n7 View all students\n8 Exit \nEnter the choice number: """))  
                if s==1:
                    st_id=input("Enter Student ID: ")
                    na=input("Enter Student Name: ")
                    d=input("Enter Student's Department: ")
                    dob=input("Enter Student Date of Birth: ")
                    g=input("Enter Student's Gender: ")
                    se=int(input("Enter Student's Semester(either sem1 or sem2): "))
                    em=input("Enter Student's Email_ID: ")
                    p=input("Enter the default password: ")
                    mycursor.execute(
                        "INSERT INTO student VALUES (%s,%s,%s,%s,%s,%s,%s,%s)",
                        (st_id, na, d, dob, g, se, em, p)
                    )
                    mydb.commit()
                    print("DATA ENTERED SUCESSFULLY")

                elif s==2:
                    f_id=input("Enter Faculty ID: ")
                    na=input("Enter Faculty Name: ")
                    em=input("Enter Faculty's Email_ID: ")
                    p=input("Enter the default password: ")
                    d=input("Enter Faculty's Department: ")
                    de=input("Enter the Designation: ")
                    mycursor.execute(
                    "INSERT INTO faculty_details (faculty_id, faculty_name, faculty_email, faculty_password, faculty_department, designation) VALUES (%s, %s, %s, %s, %s, %s)",
                    (f_id, na, em, p, d, de)
                    )
                    mydb.commit()
                    print("Faculty added successfully!")

                

                elif s == 3:
                    st_id = input("Enter Student ID: ")
                    mycursor.execute("SELECT student_id FROM student")
                    result = mycursor.fetchall()
                    
                    # Flatten the list of tuples
                    student_ids = [i[0] for i in result]

                    if st_id in student_ids:
                        print("STUDENT FOUND")
                        mycursor.execute(f"SELECT * FROM student WHERE student_id = '{st_id}'")
                        result = mycursor.fetchall()
                        for row in result:
                            print(row)
                    else:
                        print("STUDENT NOT FOUND")

                elif s == 4:
                    f_id = input("Enter Faculty ID: ")
                    mycursor.execute("SELECT faculty_id FROM faculty_details")
                    result = mycursor.fetchall()
                    
                    # Flatten the list of tuples
                    faculty_ids = [i[0] for i in result]

                    if f_id in faculty_ids:
                        print("FACULTY FOUND")
                        mycursor.execute(f"SELECT * FROM faculty_details WHERE faculty_id = '{f_id}'")
                        result = mycursor.fetchall()
                        for row in result:
                            print(row)
                    else:
                        print("FACULTY NOT FOUND")

                elif s==5:
                    st_id=input("Enter Student ID: ")
                    mycursor.execute(f"DELETE FROM student WHERE student_id = '{st_id}'")
                    mydb.commit()
                    print("DATA DELETED SUCESSFULLY")

                elif s==6:
                    f_id=input("Enter Faculty ID: ")
                    mycursor.execute(f"DELETE FROM faculty_details WHERE faculty_id='{f_id}'")
                    mydb.commit()
                    print("DATA DELETED SUCESSFULLY")
                
                elif s==7:
                    mycursor.execute("SELECT student_id, student_name, department, semester FROM student")
                    data = mycursor.fetchall()
                    df = pd.DataFrame(data, columns=["ID", "Name", "Department", "Semester"])
                    print("\nAll Students Data:")
                    print(df)

                
            
                elif s==8:
                    print("EXITING THE PROGRAM")
                    break

                else:
                    print("Invalid choice, please try again.")
        else:
            print("\nNo Admin found!")

    elif n == 2:

        print("\n--- Student Login ---")
        student_id = input("Enter Student ID: ")
        password = input("Enter Student password: ")

        mycursor.execute(
            "SELECT * FROM student WHERE student_id=%s AND student_password=%s",
            (student_id, password)
        )
        student = mycursor.fetchone()

        if student:
            print("\nLogin Successful! Welcome,", student_id)

            while True:
                s = int(input("\n1. Displaying the marks \n2. Updating the password  \n3. Display your details\n4. EXIT \nEnter the choice number: "))  
                if s==1:
                    mycursor.execute(f"SELECT course_name,marks_obtained from results_sem1 where student_id='{student_id}'")
                    sem1=mycursor.fetchall()
                    mycursor.execute(f"SELECT course_name,marks_obtained from results_sem2 where student_id='{student_id}'")
                    sem2=mycursor.fetchall()
                    
                    for row in sem1:
                        print(row[0],"-",row[1])
                    
                    for row in sem2:
                        print(row[0],"-",row[1])
                    #display marks
                elif s==2:
                    newpass=input("enter new pass:")
                    mycursor.execute(f"UPDATE student SET student_password='{newpass}' WHERE student_id='{student_id}'")
                    mydb.commit()
                    print("Password has been updated ")
                    # update the pass
                elif s==3:
                    
                    mycursor.execute(f"SELECT student_id ,student_name,department,dob,semester,email_id,gender FROM student where student_id='{student_id}'")
                    d=mycursor.fetchall()
                    
                    for row in d:
                        student={
                            "std_id":row[0],
                            "Name" :row[1],
                            "Department":row[2],
                            "dob":row[3],
                            "semester":row[4],
                            "email":row[5]
                            }
                    print(student)                       
                    
                                    # display the details
                elif s==4:
                    print("\nReturning to the main menu\n")
                    break
                else:
                    print("Invalid choice, please try again.")
        else:
            print("\nNo Student Found")
    elif n==3:
        print("\n--- Faculty Login ---")
        f_id = input("Enter Faculty_id: ")
        faculty_password = input("Enter faculty password: ")

        mycursor.execute(
            "SELECT * FROM faculty_details WHERE faculty_id=%s AND faculty_password=%s",
            (f_id, faculty_password)
        )
        faculty = mycursor.fetchone()

        if faculty:
            print("\nLogin Successful! Welcome,", f_id)
            while True:
                s = int(input("""FACULTY FEATURES \n1. Add Marks \n2. Update Marks\n3. Marks Analysis \n4. Choose Random students for assigning project \n5 Class average \n6 EXIT \nEnter the choice number: """))  
                if s==1:
                    student_id = input("Enter student_id:")
                    student_name = input("Enter student name:")
                    department = input("Enter student department:")
                    course_id = input("Enter course id:")
                    course_name = input("Enter course name:")
                    maximum_marks = input("Enter max marks:")
                    marks_obtained = input("Marks obtained:")
                    semester = int(input("Enter the semester:"))
                    mycursor.execute(
                    "SELECT * FROM student WHERE student_id=%s AND semester=%s",
                    (student_id, semester)
                    )
                    marks = mycursor.fetchone()
                    
                    if semester == 1:
                        table_name = "results_sem1"
                    else:
                        table_name = "results_sem2"
                    query = f"INSERT INTO {table_name} (student_id, student_name, department, course_id, course_name, max_marks, marks_obtained) VALUES (%s,%s,%s,%s,%s,%s,%s)"
                    mycursor.execute(query, (student_id, student_name, department, course_id, course_name, maximum_marks, marks_obtained))
                    mydb.commit()
                    print("MARKS ENTERED SUCESSFULLY")
                elif s==2:
                    student_id = input("Enter student_id:")
                    course_id = input("Enter course id:")
                    updated_marks = int(input("Enter updated marks:"))
                    semester = int(input("Enter semester:"))
                    if semester == 1:
                        table_name = "results_sem1"
                    else:
                        table_name = "results_sem2"
                    query = f"UPDATE {table_name} SET marks_obtained = %s WHERE student_id = %s AND course_id = %s"
                    mycursor.execute(query, (updated_marks,student_id,course_id))
                    mydb.commit()
                    print("MARKS UPDATED SUCESSFULLY")
                elif s == 3:
                    print("\n--- MARKS ANALYSIS ---")
                    sem = int(input("Enter semester number (1 or 2): "))
                    dept = input("Enter department name: ")
                    course = input("Enter course name: ")

                    if sem == 1:
                        table_name = "results_sem1"
                    else:
                        table_name = "results_sem2"

                    query = f"""
                        SELECT student_name, department, course_name, marks_obtained
                        FROM {table_name}
                        WHERE department = %s AND course_name = %s
                        ORDER BY marks_obtained DESC
                        LIMIT 3
                    """
                    mycursor.execute(query, (dept, course))
                    top3 = mycursor.fetchall()

                    if top3:
                        print(f"\nTop 3 Students in {course} ({dept} Department, Semester {sem})")
                        print("---------------------------------------------------------------")
                        for rank, row in enumerate(top3, start=1):
                            print(f"Rank {rank}: {row[0]} | Department: {row[1]} | Course: {row[2]} | Marks: {row[3]}")
                    else:
                        print(f"No records found for {course} in {dept} (Semester {sem}).")

                elif s==4:
                    project = input("Enter topic of project:")
                    print("Randomly assigning project topic to a student")
                    mycursor.execute("SELECT student_id FROM student")
                    students = [row[0] for row in mycursor.fetchall()]
                    if students:
                        random_student_id = random.choice(students)
                        print(f"Randomly selected Student ID: {random_student_id}") 
                        mycursor.execute(f"""
                            SELECT student_id, student_name, department, dob, gender, semester, email_id 
                            FROM student
                            WHERE student_id = '{random_student_id}'
                        """)
                        student = mycursor.fetchone()
                        if student:
                            print("\nRandom Student Details:")
                            print(f"ID        : {student[0]}")
                            print(f"Name      : {student[1]}")
                            print(f"Department: {student[2]}")
                            print(f"DOB       : {student[3]}")
                            print(f"Gender    : {student[4]}")
                            print(f"Semester  : {student[5]}")
                            print(f"Email     : {student[6]}")
                    else:
                        print("No students found in the database.")
                
                elif s == 5:
                    print("\n--- CLASS AVERAGE CALCULATION ---")
                    sem = int(input("Enter semester number (1 or 2): "))

                    if sem == 1:
                        table_name = "results_sem1"
                    else:
                        table_name = "results_sem2"

                    # Fetch department, course, and marks from table
                    mycursor.execute(f"SELECT department, course_name, marks_obtained FROM {table_name}")
                    results = mycursor.fetchall()

                    if not results:
                        print(f"No marks data found for Semester {sem}.")
                    else:
                        # Group marks by (department, course)
                        grouped = {}
                        for dept, course, marks in results:
                            key = (dept, course)
                            grouped.setdefault(key, []).append(float(marks))

                        print(f"\nAverage Marks per Department and Course - Semester {sem}")
                        print("-----------------------------------------------------------")

                        for (dept, course), marks_list in grouped.items():
                            avg_marks = sum(marks_list) / len(marks_list)
                            print(f"Department: {dept} | Course: {course} | Average Marks: {round(avg_marks, 2)}")

                elif s==6:
                    print("EXITING THE PROGRAM")
                    break
        
        else:
            print("\nNo Faculty Found")
      

    elif n == 4:
        print("Exiting program...")
        break

    else:
        print("Invalid choice, please try again.")
mydb.close()









