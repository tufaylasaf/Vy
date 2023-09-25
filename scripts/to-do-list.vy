clearDisplay()
tasks = []
completedTasks = []

func displayList(list, msg, confirmation){
    clearDisplay()
    display(msg)
    tot = len(list)
    for i = 0 to tot{
        display(str(i + 1) + ". " + list/i)
    }
    if confirmation == false return null
    display("
Press enter to continue...")
    ans = input()
}

func addTask(){
    clearDisplay()
    display("Add a Task")
    task = input()
    append(tasks,task)
}

func completeTask(){
    displayList(tasks, "Todays' Tasks:", false)
    display("Mark as Completed :")
    task = ""
    while true{
        task = inputInt() - 1
        if task >= 0 and task < len(tasks) {
            break
        }
        else{
            display("Enter a valid Task no.")
            continue
        } 
    }
    completedTask = pop(tasks, task)
    append(completedTasks, completedTask)
    displayList(completedTasks, "Completed Tasks:", true)
    clearDisplay()
}

while true{
    display("Menu: 
1 --> Display List
2 --> Add item to List
3 --> Mark item as Complete
4 --> Exit
Your Choice:")

    inp = inputInt()

    if inp == 1{
        displayList(tasks,"Todays' Tasks:", true)
        displayList(completedTasks, "Completed Tasks:", true)
        clearDisplay()
    }
    elif inp == 2{
        addTask()
        clearDisplay()
    }
    elif inp == 3{
        completeTask()
    }
    elif inp == 4{
        break
    }
    else{
        display("Enter a valid choice.")
    }
}