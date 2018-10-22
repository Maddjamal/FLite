FAIO_Lite_options = {}

local FAIO_Lite_data = require("scripts/FAIO_Lite/Core/FAIO_Lite_data")
	setmetatable(FAIO_Lite_options, {__index = FAIO_Lite_data})

-- Menu Items

local OverallPath = {}

OverallPath[1] = { "Foo0oo" }
OverallPath[2] = { "Foo0oo", "Модули" }
OverallPath[3] = { "Foo0oo", "Модули", "Last hitter" }
OverallPath[4] = { "Foo0oo", "Модули", "Last hitter", "Отрисовка" }
OverallPath[5] = { "Foo0oo", "Модули", "Last hitter", "Опции Auto LashHit" }
OverallPath[6] = { "Foo0oo", "Модули", "Last hitter", "Использование orb атак" }
OverallPath[7] = { "Foo0oo", "Модули","Orbwalker" }
OverallPath[8] = { "Foo0oo", "Модули","Orbwalker", "Опция (Orbwalk to enemy)" }
OverallPath[9] = { "Foo0oo", "Модули","Orbwalker", "Опция (Orbwalk to mouse options)" }

-- Module LastHit
FAIO_Lite_options.optionLastHitEnable = Menu.AddOptionBool(OverallPath[3], "0. Включить", false)
FAIO_Lite_options.optionLastHitKey = Menu.AddKeyOption(OverallPath[3], "1.Кнопка для активации", Enum.ButtonCode.KEY_NONE)
FAIO_Lite_options.optionLastHitStyle = Menu.AddOptionCombo(OverallPath[3], "2. Опции добивания", {'LashHit & Deny', 'Только LashHit', 'Только Deny'}, 1)
FAIO_Lite_options.optionLastHitOffset = Menu.AddOptionCombo(OverallPath[3], "3.1 Смещение по времени", {'0.00s', '0.05s', '0.10s', '0.15s', '0.20s', '0.25s'}, 1)
FAIO_Lite_options.optionLastHitPredict = Menu.AddOptionBool(OverallPath[3], "3.2 Использовать средний урон для предсказания", false)
FAIO_Lite_options.optionLastHitDrawCreepEnable = Menu.AddOptionBool(OverallPath[4], "1. Включить отрисовку", false)
FAIO_Lite_options.optionLastHitDrawRange = Menu.AddOptionBool(OverallPath[4], "0. Рисовать радиус дальности атаки", false)
FAIO_Lite_options.optionLastHitDrawStyle = Menu.AddOptionCombo(OverallPath[4], "1. Тип индикации",{'Союзные и вражеские крипы', 'Только вражеские крипы'}, 1)
FAIO_Lite_options.optionLastHitDrawCreepTimer = Menu.AddOptionBool(OverallPath[4], "2. Рисовать индикатор LashHit", false)
FAIO_Lite_options.optionLastHitAutoModeMove = Menu.AddOptionBool(OverallPath[5], "1. Двигаться к курсосу", false)
FAIO_Lite_options.optionLastHitAutoModeMoveRange = Menu.AddOptionSlider(OverallPath[5], "2. Минимальная дистанция для перемещения",  10, 400, 10)
FAIO_Lite_options.optionLastHitAutoModeEnemy = Menu.AddOptionBool(OverallPath[5], "3. Изматывать противника", false)
FAIO_Lite_options.optionLastHitAutoModeEnemySave = Menu.AddOptionBool(OverallPath[5], "4. Безопасно изматывать противника", false)
FAIO_Lite_options.optionLastHitOrb = Menu.AddOptionBool(OverallPath[6], "1. Включить использование orb атак", false)
FAIO_Lite_options.optionLastHitOrbMana = Menu.AddOptionSlider(OverallPath[6], "2. Порог маны",  5, 75, 5)


return FAIO_Lite_options