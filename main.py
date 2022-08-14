#!/usr/bin/env python3
import pandas as pd
from xml.etree import ElementTree as et
import pymysql
import sys
import os



def xml_to_df():
    print("input file name->", sys.argv[1])
    xtree = et.parse(str(sys.argv[1]))
    xroot = xtree.getroot()
    print("root element->", xroot.tag)
    df_cols = ["id", "First_Name", "Last_Name", "Gender", "Country", "Age", "Date"]
    itemlist = []

    for item in xroot:
        for ele in item.getchildren():
            if ele.tag == 'id':
                rid = ele.text
            elif ele.tag == 'First_Name':
                f_name = ele.text
            elif ele.tag == 'Last_Name':
                l_name = ele.text
            elif ele.tag == 'Gender':
                gen = ele.text
            elif ele.tag == 'Country':
                coun = ele.text
            elif ele.tag == 'Age':
                age = ele.text
            elif ele.tag == 'Date':
                print("value of Date ->", ele.text)
                dte = str(ele.text)
        itemlist.append({"id": rid, "First_Name": f_name,
                         "Last_Name": l_name, "Gender": gen,
                         "Country": coun, "Age": age, "Date": dte})
    print("number of rows in list ->", len(itemlist))

    out_df = pd.DataFrame(itemlist, columns=df_cols)
    print(out_df.dtypes)
    print("printing data frame")
    print("value of Date ->", ele.text)
    for index, row in out_df.iterrows():
        print(row.values[0], row.values[1],
              row.values[2], row.values[3], row.values[4],
              row.values[5], row.values[6])

    return out_df


def json_to_df():
    dj = pd.read_json(str(sys.argv[1]))
    return dj


def excel_to_df():
    de = pd.read_excel(str(sys.argv[1]))
    return de


if __name__ == '__main__':
    connection = pymysql.connect(host='localhost', user='pyuser',
                                 password='Pyuser@123',
                                 db='test_db')
    cursor = connection.cursor()

    if len(sys.argv) >=2:
        str1 = os.path.splitext(str(sys.argv[1]))
        file_name = str1[0]
        file_extension = str1[1]
        # for EXCEL -----------------------------------
        if file_extension == ".xls":
            df1 = excel_to_df()
            cols = df1.columns.values
            list1 = list(cols)
            print(list1)
            cursor.execute("truncate users")
            sql = "INSERT INTO `users`(id, firstname, lastname , gender, country, age, `date`) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            for index, row in df1.iterrows():
                dt = (
                    int(row.values[0]), row.values[1], row.values[2], row.values[3], row.values[4], int(row.values[5]),
                    row.values[6])
                cursor.execute(sql, dt)
            connection.commit()
            cursor.close()
            # for JSON------------------------------------
        elif file_extension == ".json":
            print(file_name, "  ", file_extension)
            df2 = json_to_df()
            print(df2.dtypes)
            cols = df2.columns.values
                    Person.lst.append(
            Person(str(row.values[0]), str(row.values[1]), str(row.values[2]), str(row.values[3]), str(row.values[4]), str(row.values[5]),
                   str(row.values[6])))list1 = list(cols)
            cursor.execute("delete from users")
            sql = "INSERT INTO `users`(id, firstname, lastname , gender, country, age, `date`) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            for index, row in df2.iterrows():
                print("row in json ->",row.values[0])
                dt = (
                    int(row.values[0]["id"]), row.values[0]["First Name"], row.values[0]['Last Name'], row.values[0]['Gender'], row.values[0]['Country'], int(row.values[0]['Age']),
                    row.values[0]['Date'])
                cursor.execute(sql, dt)
            connection.commit()
            cursor.close()
            # XMl ---------------------------------------
        elif file_extension == ".xml":
            df3 = xml_to_df()
            print(type(df3))
            cols = df3.columns.values
            list1 = list(cols)
            cursor.execute("truncate users")
            sql = "INSERT INTO `users`(id, firstname, lastname , gender, country, age, `date`) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            for index, row in df3.iterrows():
                print(int(row.values[0]), row.values[1], row.values[2], row.values[3], row.values[4],
                      int(row.values[5]),
                      row.values[6])
                dt = (
                    row.values[0], row.values[1], row.values[2], row.values[3], row.values[4], row.values[5],
                    row.values[6])
                cursor.execute(sql, dt)
            connection.commit()
            cursor.close()

        else:
            print("none of them---")
    else:
        print("command line parameters are not enough---")