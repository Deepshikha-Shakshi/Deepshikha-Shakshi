$bytes = [System.IO.File]::ReadAllBytes("c:\Users\mishr\Desktop\BB\Deepshikha.png")
$b64 = [System.Convert]::ToBase64String($bytes)
$imgTag = '<g transform="translate(45,100)"><clipPath id="avatarClip"><rect x="0" y="0" width="380" height="450" rx="15"/></clipPath><image clip-path="url(#avatarClip)" x="0" y="0" width="380" height="450" preserveAspectRatio="xMidYMid slice" href="data:image/png;base64,' + $b64 + '"/></g>'

$content = [System.IO.File]::ReadAllText("c:\Users\mishr\Desktop\BB\dark.svg")
$content = $content -replace '(?s)<g transform="translate\(50,86\).*?</g>\r?\n(?=<path d="M 50 84)', "$imgTag`n"
[System.IO.File]::WriteAllText("c:\Users\mishr\Desktop\BB\dark.svg", $content)

$contentLight = [System.IO.File]::ReadAllText("c:\Users\mishr\Desktop\BB\light.svg")
$contentLight = $contentLight -replace '(?s)<g transform="translate\(50,86\).*?</g>\r?\n(?=<path d="M 50 84)', "$imgTag`n"
[System.IO.File]::WriteAllText("c:\Users\mishr\Desktop\BB\light.svg", $contentLight)
