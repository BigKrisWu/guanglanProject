下面这个sql报java.sql.SQLException: column 18 out of bounds [1,17]，如果有问题请指出是哪里出了问题，如果语句没问题直接告诉我没问题。
```
SELECT time AS lastModified, a.NAME AS name, TRANSMISSIONSERVICETYPE AS serviceType, b.NAME AS aEndDeviceName, d.NAME AS aEndSiteName , c.NAME AS zEndDeviceName, e.NAME AS zEndSiteName, '' AS accessPtnDevice, '' AS corePtnDevice1, '' AS corePtnDevice2 , '' AS accessPtnDevicename, '' AS corePtnDevice1name, '' AS corePtnDevice2name, a.ENTITYTYPE_ID AS entityTypeId, a.TRANSMISSIONSERVICETYPE AS transmissionServiceType , CASE  WHEN a.ENTITYTYPE_ID = '30071' THEN 'PTN' WHEN a.ENTITYTYPE_ID = '30027' THEN  CASE  WHEN b.ENTITYTYPE_ID IN ('36207', '36067') 或者 c.ENTITYTYPE_ID IN ('36207', '36067') THEN 'OTN/SDH' WHEN b.ENTITYTYPE_ID = '36056' 或者 c.ENTITYTYPE_ID = '36056' THEN 'PTN/SPN' ELSE 'OTHER' END ELSE 'OTHER' END AS type, a.ID_UUID AS twinId FROM RE_BA_NRE_TRAN_TRANSCIRCUIT_SOURCE a LEFT JOIN IRM_IV_DEVICE_SOURCE b ON a.AENDDEVICE_ID = b.ID LEFT JOIN 
IRM_IV_DEVICE_SOURCE c ON a.ZENDDEVICE_ID = c.ID LEFT JOIN RE_BA_SPR_SITE_SOURCE d ON a.AENDSITE_ID = d.ID LEFT JOIN RE_BA_SPR_SITE_SOURCE e ON a.ZENDSITE_ID = e.ID,current_time
```