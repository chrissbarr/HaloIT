    global.external_dm_createdownload = external_define ('DownloadManager.dll','hobbl_com_createdownload',dll_stdcall,ty_real,2,ty_string,ty_string);
    global.external_dm_startdownload = external_define ('DownloadManager.dll','hobbl_com_startdownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getspeed = external_define ('DownloadManager.dll','hobbl_com_getspeed',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getprogress = external_define ('DownloadManager.dll','hobbl_com_getprogress',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_closedownload = external_define ('DownloadManager.dll','hobbl_com_closedownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_stopdownload = external_define ('DownloadManager.dll','hobbl_com_stopdownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_downloadstatus = external_define ('DownloadManager.dll','hobbl_com_downloadstatus',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getcontenttype = external_define ('DownloadManager.dll','hobbl_com_getcontenttype',dll_stdcall,ty_string,1,ty_real);
    global.external_dm_getcompleted = external_define ('DownloadManager.dll','hobbl_com_getcompleted',dll_stdcall,ty_real,1,ty_real);
    
