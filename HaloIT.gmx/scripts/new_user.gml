global.file_name=global.user_name + '_file'
if ini_Exists(global.file_name)
{
show_message('That name already exists!')
exit
}
else
{
ini_Create(global.file_name)
PLAYER_NAME=string_encrypt("Player_Name","199718")
global.encrypt_username=string_encrypt(global.user_name, "199718")
ini_Set(global.file_name, "CONFIG", PLAYER_NAME, global.encrypt_username);
if dif=1
ini_Set(global.file_name, "CONFIG", string_encrypt("DIFFICULTY", "199718"), string_encrypt("easy", "199718")); 
if dif=2
ini_Set(global.file_name, "CONFIG", string_encrypt("DIFFICULTY", "199718"), string_encrypt("normal", "199718")); 
if dif=3
ini_Set(global.file_name, "CONFIG", string_encrypt("DIFFICULTY", "199718"), string_encrypt("heroic", "199718")); 
if dif=4
ini_Set(global.file_name, "CONFIG", string_encrypt("DIFFICULTY", "199718"), string_encrypt("legendary", "199718"));  
ini_Set(global.file_name, "CONFIG", string_encrypt("Password", "199718"), string_encrypt(global.password, "199718"));
ini_Set(global.file_name, "CONFIG", string_encrypt("Points", "199718"), string_encrypt("0", "199718")); 
ini_Set(global.file_name, "CONFIG", string_encrypt("KEYS", "199718"), string_encrypt("WASD", "199718")); 
ini_Set(global.file_name, "CONFIG", string_encrypt("DRAWBLOOD", "199718"), string_encrypt("true", "199718")); 
ini_Set(global.file_name, "CONFIG", string_encrypt("MRELATIVE", "199718"), string_encrypt("0", "199718")); 
ini_Set(global.file_name, "CONFIG", string_encrypt("LONGESTARENA", "199718"), string_encrypt("0", "199718"));  
ini_Set(global.file_name, "CONFIG", string_encrypt("Level1comp", "199718"), string_encrypt("0", "199718")); 
ini_Set(global.file_name, "CONFIG", string_encrypt("Level2comp", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "CONFIG", string_encrypt("Level3comp", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "CONFIG", string_encrypt("Level4comp", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "CONFIG", string_encrypt("Level5comp", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "CONFIG", string_encrypt("shieldskull", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "ARMOUR", string_encrypt("MJOLNIR", "199718"), string_encrypt("1", "199718"));
ini_Set(global.file_name, "ARMOUR", string_encrypt("RECHARGE", "199718"), string_encrypt("1", "199718"));
ini_Set(global.file_name, "WEAPONS", string_encrypt("PISTOLCAP", "199718"), string_encrypt("1", "199718"));
ini_Set(global.file_name, "WEAPONS", string_encrypt("ARCAP", "199718"), string_encrypt("1", "199718"));
ini_Set(global.file_name, "WEAPONS", string_encrypt("LOTUS", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "WEAPONS", string_encrypt("LASER", "199718"), string_encrypt("0", "199718"));
ini_Set(global.file_name, "KILLS", string_encrypt("Grunts", "199718"), string_encrypt("0", "199718")); 
ini_Set(global.file_name, "KILLS", string_encrypt("Jackals", "199718"), string_encrypt("0", "199718")); 
ini_Set(global.file_name, "KILLS", string_encrypt("Elites", "199718"), string_encrypt("0", "199718")); 
ini_Set(global.file_name, "KILLS", string_encrypt("Hunters", "199718"), string_encrypt("0", "199718")); 
}
