Param(
    [string]$CurrentPath
)

# Определяем пути, которые требуется заменять
$Path1 = 'Z:\some_path'
$Path2 = 'R:\some_path'

# Удаляем завершающий обратный слеш, если он есть
if ($CurrentPath.EndsWith('\')) {
    $CurrentPath = $CurrentPath.TrimEnd('\')
}

# Проверяем и заменяем пути
if ($CurrentPath -like "$Path1*") {
    $NewPath = $CurrentPath -replace [regex]::Escape($Path1), $Path2
}
elseif ($CurrentPath -like "$Path2*") {
    $NewPath = $CurrentPath -replace [regex]::Escape($Path2), $Path1
}
else {
    Write-Host "Текущий путь не начинается с $Path1 или $Path2"
    Read-Host -Prompt "Нажмите Enter для выхода"
    exit
}

# Проверяем, существует ли новый путь
if (Test-Path $NewPath) {
    # Открываем новый путь в Проводнике
    Start-Process explorer.exe $NewPath
}
else {
    Write-Host "Новый путь '$NewPath' не существует."
    Read-Host -Prompt "Нажмите Enter для выхода"
}
