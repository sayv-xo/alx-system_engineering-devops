#!/usr/bin/python3
""" gather information using API """
import requests
from sys import argv

if __name__ == "__main__":
    user_id = argv[1]
    url = 'https://jsonplaceholder.typicode.com/users'

    user_info = requests.get(f"{url}/{user_id}").json()
    todo_list = requests.get(f"{url}/{user_id}/todos").json()

    tasks = [i["title"] for i in todo_list if i["completed"]]

    print("Employee {} is done with tasks({}/{}):"
          .format(user_info.get("name"), len(tasks), len(todo_list)))
    for task in tasks:
        print("\t {}".format(task))
