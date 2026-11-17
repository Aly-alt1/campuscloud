docker run  `
--env-file "$PSScriptRoot\.env" `
-d `
--network campus-network `
--name postgres-campuscloud `
-p54320:5432 `
-v campuscloud-postgres-data:/var/lib/postgresql/data `
--restart always `
postgres:16-bookworm