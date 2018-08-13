give_points(argument0);

switch (argument1) 
{
    case "Grunts":
        global.kills_grunt += 1;
        break;
    case "Jackals":
        global.kills_jackal += 1;
        break;
    case "Elites":
        global.kills_elite += 1;
        break;
    case "Hunters":
        global.kills_hunter += 1;
        break;
}

