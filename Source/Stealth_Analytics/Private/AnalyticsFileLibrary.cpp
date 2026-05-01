// Fill out your copyright notice in the Description page of Project Settings.


#include "AnalyticsFileLibrary.h"
#include "Misc/FileHelper.h"
#include "Misc/Paths.h"
#include "HAL/PlatformFileManager.h"

bool UAnalyticsFileLibrary::WriteTextToFile(const FString& FilePath, const FString& Text)
{
    IPlatformFile& PlatformFile = FPlatformFileManager::Get().GetPlatformFile();

    const FString Directory = FPaths::GetPath(FilePath);
    if (!PlatformFile.DirectoryExists(*Directory))
    {
        PlatformFile.CreateDirectoryTree(*Directory);
    }

    return FFileHelper::SaveStringToFile(Text, *FilePath);
}

FString UAnalyticsFileLibrary::BuildAnalyticsCSVPath(const FString& FileName)
{
    return FPaths::Combine(FPaths::ProjectSavedDir(), TEXT("Analytics"), FileName);
}

