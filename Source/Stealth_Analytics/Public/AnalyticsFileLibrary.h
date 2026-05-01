// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Kismet/BlueprintFunctionLibrary.h"
#include "AnalyticsFileLibrary.generated.h"

UCLASS()
class STEALTH_ANALYTICS_API UAnalyticsFileLibrary : public UBlueprintFunctionLibrary
{
    GENERATED_BODY()

public:
    UFUNCTION(BlueprintCallable, Category = "Analytics")
    static bool WriteTextToFile(const FString& FilePath, const FString& Text);

    UFUNCTION(BlueprintPure, Category = "Analytics")
    static FString BuildAnalyticsCSVPath(const FString& FileName);
};
