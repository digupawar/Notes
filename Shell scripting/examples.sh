Shell scripting:

sample shell scripting file
Sample="This is just text"
echo ${#Sample}

1. digu.sh
WD=$(pwd)
echo "Enter new directory name"
echo "Enter new filename name"
read new_dir
read new_file
New_dir_path="${WD}/${new_dir}"
New_dir_path1="${WD}/${new_file}"
mkdir $New_dir_path
touch $New_dir_path1
echo "New directory created at ${New_dir_path}"
echo "New file created at ${New_dir_path1}"

2.
getfunc()
{
expectedresult="Hello DSP"
echo $expectedresult
}

result=$(getfunc)
echo "result is: $result"

3.
myfunc() {
local myresult= "somevalue"
echo $myresult
}
result="$(myfunc)"

4.
getfun()
{
local exptresult=$1
echo $exptresult
}

echo "enter ur input"
read userinput
result="$(getfun $userinput)"
echo "result is ${result}"

5. if else condition
echo "enter your name"
read NAME

if [[ $NAME != "Digu" ]]; then
echo "You are not Digu"
else
echo "You are Digu"
fi

6. Arrays
Fruits=('Apple' 'Banana' 'Orange' 'Peru')
echo ${Fruits[0]}
echo ${Fruits[-1]}
echo ${Fruits[@]}
echo ${#Fruits[@]}
echo ${#Fruits}
echo ${#Fruits[3]}
echo ${Fruits[@]:3:2}
echo ${!Fruits[@]}

7. Move file to s3 bucket:
vi moveto_S3.sh
echo "Please enter a file you want to move to s3"
read file_name
echo "Please enter the bucket name"
read bucket_name

aws s3 mv "${file_name}" "s3://${bucket_name}/"

