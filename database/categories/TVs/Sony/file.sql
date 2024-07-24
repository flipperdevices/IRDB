SELECT *
FROM SIGNAL_TABLE
         LEFT JOIN INFRARED_FILE_TO_SIGNAL ON SIGNAL_TABLE."id" = INFRARED_FILE_TO_SIGNAL."signal_id"
         LEFT JOIN INFRARED_FILE on INFRARED_FILE_TO_SIGNAL."infrared_file_id" = INFRARED_FILE."id"
         LEFT JOIN SIGNAL_KEY on SIGNAL_TABLE."id" = SIGNAL_KEY."signal_id"

    // Идентификатор бренда
    AND SIGNAL_TABLE."brand_id" = 763

// Только с текущим ордером
WHERE SIGNAL_KEY."device_key" = 0
  AND SIGNAL_KEY."signal_id" = SIGNAL_TABLE."id"

    // Исключаем уже пройденный
  AND SIGNAL_TABLE."id" not in (72790)

    // Исключаем неудачные
  AND SIGNAL_TABLE."id" not in (132862)

    // Только те файлы где есть успешные сигналы
  AND "infrared_file_id" in
    (SELECT ("infrared_file_id") FROM INFRARED_FILE_TO_SIGNAL WHERE INFRARED_FILE_TO_SIGNAL."signal_id" in (72790))
    // Сортируем по тем, у которых наибольшее вхождение
ORDER BY (SELECT COUNT(*) FROM INFRARED_FILE_TO_SIGNAL WHERE "signal_id" = SIGNAL_TABLE."id") DESC;


