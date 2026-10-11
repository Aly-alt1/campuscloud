Clear-Host
Write-Host "Iniciando despliegue de Bases de Datos CampusCloud..." -ForegroundColor Cyan

# 1. Cargar las imágenes desde los archivos .tar en la carpeta 'descargas'
Write-Host "Verificando y cargando imágenes locales..." -ForegroundColor Yellow
$tarFiles = @(
    ".\descargas\postgresbookworm.tar",
    ".\descargas\pgadmin4_6.17.tar",
    ".\descargas\sqlserver2025.tar"
)

foreach ($tar in $tarFiles) {
    if (Test-Path $tar) {
        Write-Host "Cargando imagen desde $tar..."
        docker load -i $tar
    } else {
        Write-Host "Advertencia: No se encontró el archivo $tar. Se intentará usar la imagen del registro o caché local." -ForegroundColor Yellow
    }
}

# 2. Verificar existencia del archivo .env
if (-not (Test-Path ".env")) {
    Write-Host "Error: No se encontró el archivo .env en la ruta actual." -ForegroundColor Red
    exit
}

# 3. Extraer el nombre de la red del archivo .env
$EnvContent = Get-Content ".env"
$NetworkLine = $EnvContent | Where-Object { $_ -match "^DOCKER_NETWORK=" }
$NetworkName = $NetworkLine.Split("=")[1].Trim()

# 4. Crear la red externa de Docker si no existe
$NetworkExists = docker network ls --format "{{.Name}}" | Select-String -Pattern "^$NetworkName$"
if (-not $NetworkExists) {
    Write-Host "Creando la red externa de Docker: $NetworkName" -ForegroundColor Yellow
    docker network create $NetworkName
} else {
    Write-Host "La red '$NetworkName' ya existe. Omitiendo creación." -ForegroundColor Green
}

# 5. Levantar los contenedores
Write-Host "Levantando contenedores (PostgreSQL, PgAdmin, SQL Server)..." -ForegroundColor Yellow
docker compose up -d

# 6. Mostrar el estado final
Write-Host "`nEstado actual de los contenedores:" -ForegroundColor Cyan
docker compose ps