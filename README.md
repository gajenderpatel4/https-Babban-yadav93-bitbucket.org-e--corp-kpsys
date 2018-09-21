# kpsys dashboard application

### Set up in IntelliJ IDEA

Simply open the directory containing the project in IDEA.
File -> Open -> Select directory.

### Configure

All configuration resides in `kpsys.yml` file.

Important parameters:

* `server.applicationConnectors.port` -- specifies application port number, default is `8087`
* database properties: 
    * `database.user` -- defines database user
    * `database.password` -- database password
    * `database.url` -- specifies database connection url, which includes host, port and database name. Default value is `jdbc:sqlserver://db.kpsys.com:1433;databaseName=kpsys`, where jdbc:sqlserver is a constant value for this type of database, db.kpsys.com is a hostname, 1433 is a port number and `kpsys` is a database name. 
* paypal:
    * `mode` -- defines PayPal mode, which is `sandbox` for testing or `live` for production
    * `clientId` -- To get a client ID and secret, use the developer dashboard to create a PayPal app: `https://developer.paypal.com/docs/api/overview/#make-your-first-call`
    * `clientSecret` -- To get a client ID and secret, use the developer dashboard to create a PayPal app: `https://developer.paypal.com/docs/api/overview/#make-your-first-call`

### Build
Download 4.2 package: https://www.microsoft.com/en-us/download/details.aspx?id=11774 (OR /lib folder)
Install sqljdbc42.jar library to the local maven repository:
`mvn install:install-file -Dfile=lib/sqljdbc42.jar -DgroupId=sqljdbc -DartifactId=sqljdbc -Dversion=42 -Dpackaging=jar`

Validate with maven: 

`mvn validate`

Build with maven:

`mvn package`

This will generate uber-jar containing all dependencies and web assets at `target/kpsys-0.1.jar`

### Run initial DB import

`java -jar target/kpsys-0.1.jar db migrate kpsys.yml`

### Run

Run server:

`java -jar kpsys/target/kpsys-0.1.jar server kpsys.yml`

Login to the application: 

http://localhost:8087/#/login

User: test, password: 12345

### Front end

Install Compass compiler:

`sudo gem install compass`

Build: 
`npm install`
`sudo npm install -g bower`
`sudo npm install -g grunt-cli`
`sudo npm install -g gulp`
`bower install`
`bower install angular-bootstrap`
`bower install angular-datatables`
`npm install grunt --save-dev`
`grunt`

### MSSQL Server on MacOS via VirtualBox

* Download Windows 7 image
* Install windows on virtualBox
* Download Management Studio https://www.microsoft.com/ru-ru/download/details.aspx?id=7593
* Installation Guide: https://blogs.msdn.microsoft.com/bethmassi/2011/02/18/step-by-step-installing-sql-server-management-studio-2008-express-after-visual-studio-2010/
* Download SQL-Server from https://www.microsoft.com/ru-ru/download/details.aspx?id=1695
* Installation Guide: https://blogs.msdn.microsoft.com/bethmassi/2011/02/18/
* Open port 1433: Run -> Computer(right click) -> Manage -> Services and Application -> SQL Server Configuration -> SQL Server Network Configuration -> Protocols for SQLEXPRESS -> Enable TCP-IP
* Reboot Windows
* Create db kpsys
* Create user kpsys:kpsys 
* Add to user kpsys all permissions except db_denydatareader, db_denydatawriter
* Open VirtualBox -> Open Windows 7 -> Settings -> Network (Advanced) -> Port Forwarding -> Add 1433:1433 (Host Port, Guest Port)
* Download DbVisualiser https://www.dbvis.com/download/
