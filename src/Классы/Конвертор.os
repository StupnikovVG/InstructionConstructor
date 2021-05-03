#Использовать cmdline
#Использовать fs

Процедура HtmlToMarkdown(Знач Источник, Знач КаталогПриемник) Экспорт
	ИмяФайлаПриеника = КаталогПриемник + Источник.Имя;
	Команда = СтрШаблон("pandoc -f html -t markdown %1 %2", Источник.ПолноеИмя, ИмяФайлаПриеника);	
КонецПроцедуры

Процедура MarkdownToHtml(Знач Источник, Знач КаталогПриемник) Экспорт
	ИмяФайлаПриеника = КаталогПриемник + Источник.Имя;
	Команда = СтрШаблон("pandoc -f markdown -t html %1 %2", Источник.ПолноеИмя);	
	Результат = "";
	Результат = СтрШаблон(ШаблонHtml(), Результат);
КонецПроцедуры

Функция ШаблонHtml()
	Возврат "<!DOCTYPE html PUBLIC ""-//W3C//DTD HTML 4.0 Transitional//EN"">
	|<html>
	|<head>
	|<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"">
	|</meta>
	|<link rel=""stylesheet"" type=""text/css"" href=""v8help://service_book/service_style"">
	|</link>
	|</head>
	|<body>
	|%1
	|</body>
	|</html>";	
КонецФункции