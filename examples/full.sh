# this is comment

# ------------------------------------------------------- print something
echo "Hello World"

# ------------------------------------------------------- print the input argument
echo $1 $2 $3

# ------------------------------------------------------- define a variable
a=2

# ------------------------------------------------------- immutable variable
readonly PI=3.14

# ------------------------------------------------------- change the variable
a=3
# PI = 3 # you can't do this

# ------------------------------------------------------- print variable
echo $a
echo $PI

# ------------------------------------------------------- number condition
if [ "$age" -gt 18 ]; then
    echo "Adult"
elif [ "$age" -eq 18 ]; then
    echo "Just turned adult"
elif [ "$age" -lt 18 ]; then
    echo "Just turned adult"
elif [ "$age" -ne 18 ]; then
    echo "Just turned adult"
else
    echo "Minor"
fi

# ------------------------------------------------------- file and directory
if [ -f /etc/passwd ]; then
    echo "File exists"
fi

if [ -d /etc/docker ]; then
    echo "Directory exists"
fi

# ------------------------------------------------------- loop
for i in {1..5}; do
    echo "Number: $i"
done


for file in *.txt; do
    echo "Processing $file"
done

count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done

count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done

# ------------------------------------------------------- function
greet() {
    echo "Hello, $1"
}

greet "Alice"


add() {
    echo $(($1 + $2))
}

result=$(add 3 5)
echo "Result: $result"

# ------------------------------------------------------- get time
now=$(date)
echo "Current time: $now"


# ------------------------------------------------------- array
fruits=("apple" "banana" "cherry")
echo "${fruits[1]}"     # banana
echo "${fruits[@]}"     # all elements
echo "${!fruits[@]}"    # indexes
echo "${#fruits[@]}"    # size

fruits+=("orange")

for fruit in ${fruits[@]}; do
    echo "Processing ${fruit}"
done

# ------------------------------------------------------- key-value
declare -A person
person[name]="Alice"
person[age]=30

echo "Name: ${person[name]}"

# ------------------------------------------------------- string
str="hello world"
echo "${str:0:5}"   # hello

echo "${str/world/universe}"  # hello universe

echo "${#str}" # length

echo "${str^^}"     # HELLO WORLD
echo "${str,,}"     # hello world

# ------------------------------------------------------- exit codes and errors
ls /nonexistent
echo $?   # 2 (error)

# ------------------------------------------------------- stdin
echo "input: "
read line
echo $line