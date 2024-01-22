$sourceFolder = "C:\Users\LHAYS6541\Desktop\THISONHERE"
$destinationFolder = "C:\Destination\Folder"

# Copy the folder
Copy-Item -Path $sourceFolder -Destination $destinationFolder -Recurse -Force

# Send a message to the Discord webhook
$webhookUrl = "https://discord.com/api/webhooks/1188265666357235762/0szQC7nUpahRmBot5EeyXsJPiL79Q655TU7xZ7Ab9ip69Gqa7HdycbyOd7RJnXDm824g"
$body = @{
    content = "Folder copied successfully!"
}
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType "application/json" -Body ($body | ConvertTo-Json)
