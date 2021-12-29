function calculator()
    while true
        calculatInterface()
        println("press c to continue or q to quit")
        response = readline()
        if cmp(response, "c") == 0
            continue
        end
        if cmp(response, "q") == 0
            break
        end
    end
end

function calculatInterface()
    result = 0
    println("Enter the first number")
    a = getEnteredNumber()
    println("Enter The operation to perform")
    operation = readline()
    println("Enter last number")
    b = getEnteredNumber()
    if cmp(operation, "+") == 0
        result = a + b
    end
    if cmp(operation, "-") == 0
        result = a - b
    end
    if cmp(operation, "*") == 0
        result = a * b
    end
    if cmp(operation, "/") == 0
        result = a / b
    end
    if cmp(operation, "^") == 0
        result = a ^ b
    end

    println("resultat: ", result)
end

function getEnteredNumber()
    x = readline()
    x = parse(Float64, x)
    return x
end

calculator()