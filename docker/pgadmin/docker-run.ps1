docker run  `
-d `
--network campus-network `
--env-file "$PSScriptRoot\.env" `
--name pgadmin `
-p 8082:80 `
-v campuscloud_pgadmin-data:/var/lib/pgadmin `
--restart always `dpage/pgadmin4:6.17