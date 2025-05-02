Add-Type @"
using System;
using System.Runtime.InteropServices;
public class WinAPI {
    [DllImport("user32.dll")]
    public static extern IntPtr GetForegroundWindow();
    [DllImport("user32.dll", SetLastError=true)]
    public static extern int GetWindowText(IntPtr hWnd, System.Text.StringBuilder text, int count);
}
"@

$handle = [WinAPI]::GetForegroundWindow()
$buffer = New-Object System.Text.StringBuilder 256
[void][WinAPI]::GetWindowText($handle, $buffer, $buffer.Capacity)

if ($buffer.ToString() -notlike "*EA SPORTS FC 25*") {
    Write-Host "FIFA no está en primer plano. Activando ventana..."
    Start-Process -FilePath "nircmd.exe" -ArgumentList 'win activate ititle "EA SPORTS FC 25"'
} else {
    Write-Host "FIFA ya está en primer plano."
}
