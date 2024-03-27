[FHIR Client Data Standard View for hospital](https://docs.google.com/spreadsheets/d/1svYWvkBnFeXI2ckUDqVO7LRZcaKGJR47/edit?usp=sharing&ouid=109290691198515746024&rtpof=true&sd=true)

จากสุรศักดิ์มนตรี Database ถึง FHIR Client : [SHS DB to FHIR Client](https://docs.google.com/spreadsheets/d/1VvVH6nhaCuh3mEj9EQibAnbAqKzP_KN4tszQA-Rta-g/edit?usp=sharing)

วิธีการเขียนทั้งหมดจะอยู่ในรูปของ MySQL Statement การทำงานของ Statement จะใช้วิธี INSERT With SELECT ตัวอย่างเช่นแฟ้มของ patient
```mysql
INSERT INTO `client_patient` (`source_id`, `cid`, ..., `last_update_date_time`) 
SELECT '001151200' AS `source_id`,
...
DATE_FORMAT(strDatetimeToEn(b.`lastupdate`), '%Y-%m-%dT%TZ') AS `last_update_date_time`
FROM (
    ... `opcard` ... 
) AS a 
LEFT JOIN `opcard` AS b ON b.`row_id` = a.`last_id` 
```

ฟังก์ชั่นทั้งหมดของ Mysql สามารถเข้าไปดูได้ในโฟเดอร์ `functions`<br>
ตัวอย่างการสร้าง [MySQL Function ใน PHPMyAdmin](https://www.experts-exchange.com/questions/29003352/Creating-Functions-in-phpMyAdmin.html)

ตัวอย่างโครงสร้างที่จะส่งให้ FHIR Client อยู่ใน `tables`