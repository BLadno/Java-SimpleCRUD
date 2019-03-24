Opis projektu:

Aplikacja jest wykonana w języku programowania Java. Do jej utworzenia użyłem Eclipse. Aplikacja działa na serwerze Tomcat 9. Celem projektu było utworzenie prostego CRUDa, czyli operacji utworzenia, wyświetlenia, aktualizacji i usuwania danych w bazie danych. Do połączenia się z bazą danych użyłem narzędzia hibernate, a sama bazy danych działa przy użyciu MySQL’a i serwera MariaDB. Do komunikacji z użytkownikiem użyłem springa i pakietu MVC(model view controler). Komunikacja odbywa się za pomocą strony internetowej. Widoki zawarte są w plikach .jsp w katalogu WEB-INF/views. Widoki używają jednego szablonu wrapper.tag z katalogu WEB-INF/tags i jednego pliku style.css z katalogu WEB-INF/css. Połączenia z bazą danych są realizowane przez klasę ManageEmployee, wykorzystują one model Employee. Za wyświetlanie odpowiednich stron i przekazywanie danych z formularzy odpowiada HomeController.

Użyte narzędzia:
    • Eclipse
    • Maven
    • Spring
    • Hibernate
    • Spring MVC
    • Baza danych MariaDB
    • Tomcat 9
    
Baza danych posiada nazwę hibernate i następującą tabelę:

create table EMPLOYEE (
   id INT NOT NULL auto_increment,
   first_name VARCHAR(20) default NULL,
   last_name  VARCHAR(20) default NULL,
   salary     INT  default NULL,
   PRIMARY KEY (id)
);

Aplikacja sama nie tworzy bazy danych, ani tabeli employee.
