import pymysql
import csv

# 測試用，mysql 帳號與密碼存在 account_management.csv，在git clone之後可以自己建一個新檔案
accountsNpasswds = []
with open("sql/account_management.csv", "r", encoding="utf-8") as csvfile:
    rows = csv.reader(csvfile)
    for row in rows:
        clean_row = []
        for element in row:
            clean_row.append(element.strip())
        accountsNpasswds.append((clean_row[0],clean_row[1]))


conn = pymysql.connect(host="127.0.0.1",
                       user=accountsNpasswds[0][0],
                       passwd=accountsNpasswds[0][1],
                       db="supermarket")
cur = conn.cursor()

# 靜態寫法

# 查詢
query = "select OrderID, Customers.UserID, TransactionTime \
        from Customers, Orders \
        where Customers.UserID = Orders.UserID;"
cur.execute(query)
for r in cur:
    print(r)

# 新增客戶資料
insertion = 'INSERT INTO Customers(UserID, FirstName, LastName, Tel, Email)\
            VALUES ("abcdefghijklmnopqrstuvwxyz123456", "Robert", "Aintaman",\
            "0912345678", "testtest@gmail.com");'
try:
    # 執行sql語句
    cur.execute(insertion)
    # 提交到資料庫執行，
    conn.commit()
except pymysql.Error as e:
    print("MySQL Error %d : %s" %(e.args[0],e.args[1]))
    # 發生錯誤時rollback
    conn.rollback()

cur.close()
conn.close()


