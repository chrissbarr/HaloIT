/*
global.user_name=get_string('Please enter your username:','')
if global.user_name=''{
show_message('Invalid username.')
exit
}
global.passenter=get_string('Please enter your password:','')
if global.passenter=''{
show_message('Invalid password.')
exit
}

global.file_name=global.user_name + '_file'
if !ini_Exists(global.file_name)
{
show_message('No such user found!')
exit
}
else
{
global.password=ini_GetValue(global.file_name, "CONFIG", string_encrypt("Password", "199718"))
global.password=string_decrypt(global.password,"199718")
if string(global.passenter) == string(global.password)
{
show_message('Thankyou, you are now logged in.')
global.user_name=global.user_name
}
else
{
show_message('That password is invalid!')
global.user_name=""
}
}
*/
