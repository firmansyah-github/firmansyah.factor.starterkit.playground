please create freemarker templates file based on above info and with following requirement:
freemarker files for generate CRUD springboot code application with Layered Architecture (N-Tier / MVC) including all java classes that need to be created
support Primary key and Foreign key including compound PK and FK. 
Using FreeMarker 2.3.33.
Add DTOs and mappers
Foreign key relationship joins
Additional config for compound keys via @IdClass or @EmbeddedId
Pagination and filtering logic in service/controller
Tests or API documentation
All file must be in one downloadable zip file.

ABSOLUTELY NO ${...} EXPRESSIONS ARE ALLOWED IN THE <Value> SECTION

Invalid Examples (PROHIBITED):
freemarker
${PRV_SYS_GEN_PATH|src/main/java/${PUB_APP_PKG?replace('.','/')}/model|Output path}  ❌ Contains ${...}
${PRV_SYS_JAVA_PACKAGE|${PUB_APP_PKG}.model|Java package}  ❌ Contains ${...}
Valid Alternatives (REQUIRED):
For package paths: Use placeholders without expressions

freemarker
${PRV_SYS_GEN_PATH|src/main/java/com/example/app/model|Output path} 
For dynamic values: Use template placeholders ([table], [base], [class], [instance])

freemarker
${PRV_SYS_GEN_FILENAME|[class]Controller.java|Filename pattern}
For Java packages: Use fixed values or public objects defined separately

freemarker
${PRV_SYS_JAVA_PACKAGE|com.example.app.model|Java package}