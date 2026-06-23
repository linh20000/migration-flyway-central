# MIGRATION SERVICE

## Thêm service
Bước 1 : Coppy thư mục 'service-example' vào trong thư mục 'services' .

Bước 2: đổi tên thư mục 'service-example' thành tên service mong muốn
(ví dụ : service_name)


Bước 3: Sửa thông tin kết nối database ở file flyway.conf trong thư mục 'service_name/config/develop|production' tương ứng với môi trường

```code
flyway.user=db_user
flyway.password=db_pass
flyway.schemas=db_schema
flyway.baselineOnMigrate=true
flyway.url=jdbc:postgresql://<db_host>:<db_port>/<db_name>
flyway.locations=filesystem:services/<service_name>/migration
```

Bước 4: Tạo file migrate ở thư mục 'migration' bên trong thư mục ở bước 2
cú pháp đặt tên
- V1_0_0__ten_file.sql( "V" là tiền tố cố định ký tự "__" nối giữa ver và tên file cố định)
- Không đổi tên và nội dung những file sql đã tạo trước đó

Bước 5: Thêm vào file pom.xml nội dung sau ở trong tag <executions></executions>

node = dev|prod

```code
<execution>
    <id><service_name></id>
    <phase>compile</phase>
    <goals>
        <goal>migrate</goal>
    </goals>
    <configuration>
        <configFile>services/<service_name>/config/<node>/flyway.conf</configFile>
    </configuration>
</execution>
```

Bước 6: Chạy lệnh

```bash
mvn flyway:migrate@<service_name> -P <node>
```

### Chú ý: nhớ thay '<service_name>' ở bước 3,5 bằng tên service ở bước 2
### Mọi thắc mắc liên hệ hungnd@trithucmoi.co

### chạy migrate ./migrate.sh user dev
### chạy tạo migrate ./make-migrate.sh user 4_0_1 create_table_package

