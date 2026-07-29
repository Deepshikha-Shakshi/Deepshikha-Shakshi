$files = @("dark.svg", "light.svg")
foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText("c:\Users\mishr\Desktop\BB\$file")
    
    $content = $content.Replace("deepshikha@example.com", "shakshideepshikha@gmail.com")
    $content = $content.Replace("BSc in CSE", "MTech-Integrated (CSE in Cognitive Computing)")
    $content = $content.Replace("VS Code, Git, Android Studio, Figma", "VS Code, Git, Figma")
    $content = $content.Replace("Dart, C++, Python", "Python, JavaScript, C")
    $content = $content.Replace("> Flutter<", "> ReactJS, NextJS<")
    $content = $content.Replace("Firebase, MongoDB", "Firebase, MongoDB, Redis, SQL, Vector Databases")
    $content = $content.Replace("Vercel, Docker, Git", "Vercel, Docker, Git, Kubernetes")
    $content = $content.Replace("arif-hasan-672249358", "deepshikha-shakshi")
    $content = $content.Replace("@arifhaxn<", "@Deepshikha-Shakshi<")
    $content = $content.Replace("Grid.Facebook", "Grid.Insta")
    $content = $content.Replace("@arifhaxnn", "__shakshi.d")
    
    [System.IO.File]::WriteAllText("c:\Users\mishr\Desktop\BB\$file", $content)
}
