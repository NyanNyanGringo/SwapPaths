Param(
    [string]$CurrentPath
)

# ���������� ����, ������� ��������� ��������
$Path1 = 'Z:\some_path'
$Path2 = 'R:\some_path'

# ������� ����������� �������� ����, ���� �� ����
if ($CurrentPath.EndsWith('\')) {
    $CurrentPath = $CurrentPath.TrimEnd('\')
}

# ��������� � �������� ����
if ($CurrentPath -like "$Path1*") {
    $NewPath = $CurrentPath -replace [regex]::Escape($Path1), $Path2
}
elseif ($CurrentPath -like "$Path2*") {
    $NewPath = $CurrentPath -replace [regex]::Escape($Path2), $Path1
}
else {
    Write-Host "������� ���� �� ���������� � $Path1 ��� $Path2"
    Read-Host -Prompt "������� Enter ��� ������"
    exit
}

# ���������, ���������� �� ����� ����
if (Test-Path $NewPath) {
    # ��������� ����� ���� � ����������
    Start-Process explorer.exe $NewPath
}
else {
    Write-Host "����� ���� '$NewPath' �� ����������."
    Read-Host -Prompt "������� Enter ��� ������"
}
