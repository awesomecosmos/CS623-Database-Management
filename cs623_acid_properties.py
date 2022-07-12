# importing packages
import mysql.connector
import pyodbc 

def implementACIDtransaction(sql_query):
    try:
        # establishing connection to MySQL
        conn = mysql.connector.connect(host='localhost',
                                        database='TEST',
                                        user='root',
                                        password='password')

        ##############################
        # IMPLEMENTING ACID PROPERTIES
        ##############################

        # turning off AutoCommit to implement Atomicity property
        conn.autocommit = False
        # setting isolation level to Serizalizable to implement Isolation property
        conn.start_transaction(isolation_level='SERIALIZABLE')

        # establishing a cursor instance
        cursor = conn.cursor()

        # executing our SQL query in MySQL
        cursor.execute(sql_query)
        print("Transaction has been succcesfully implemented!")

        # committing our changes after the transaction successfully executes 
        conn.commit()

    except mysql.connector.Error as error:
        # ACID property was not successfully implemented
        # need to prevent commit to database to comply with Atomicity property
        print("Transaction failed with the following error! {}".format(error))
        print("Transaction has been aborted!")

        # doing rollback to database state before transaction
        conn.rollback()

    finally:
        # securely closing database cursor and connection
        if conn.is_connected():
            cursor.close()
            print("Database cursor closed successfully!")
            conn.close()
            print("Database connection closed successfully!")

#################################################
# TESTING THE ACID IMPLEMENTATION
#################################################

# SQL queries for repopulating tableS in case data needed again
repopulate_Product = "INSERT INTO Product VALUES ('p1','tape',2.5)"
repopulate_Stock = "INSERT INTO Stock VALUES ('p1','d1',1000),('p1','d2',-100),('p1','d4',1200)"

# SQL queries for deleting 'p1' from tables
delete_from_Product = "DELETE FROM Product WHERE ProdID = 'p1'"
delete_from_Stock = "DELETE FROM Stock WHERE ProdID = 'p1'"


# using function to ensure ACID properties implemented on these SQL queries

# implementACIDtransaction(repopulate_Product)
# implementACIDtransaction(repopulate_Stock)

implementACIDtransaction(delete_from_Product)
implementACIDtransaction(delete_from_Stock)